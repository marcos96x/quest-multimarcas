<?php

namespace App\Http\Controllers;

use App\Models\Cars;
use Illuminate\Support\Facades\DB;
use Goutte\Client;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class CarsController extends Controller
{

    public function dashboard() {
        $cars = Cars::get();
        return view('dashboard', compact('cars'));
    }

    public function search(Request $request)
    {
        $client = new Client();
        $url = "https://www.questmultimarcas.com.br/estoque?termo={$request->search}";
        $page = $client->request('GET', $url);

        echo '<pre>';
        $titulos = $page->filter('.card__title')->each(function($node, $i) {
            return $node->text();
        });
        
        $fotos = $page->filter('.card__img img')->extract(['src']);
        $links = $page->filter('.card__title a')->extract(['href']);
        // roda todas as desc, separando por ano, quilometragem, combustiveis, etc
        $desc = [];
        $desc_content = $page->filter('.card-list__info')->extract(['_text']);        
        for($i = 0; $i < sizeof($desc_content); $i += 6) {
            if(isset($desc_content[$i + 5])) {
                $desc_data = [
                    'ano' => trim($desc_content[$i]),
                    'quilometragem' => trim($desc_content[$i + 1]),
                    'combustivel' => trim($desc_content[$i + 2]),
                    'cambio' => trim($desc_content[$i + 3]),
                    'portas' => trim($desc_content[$i + 4]),
                    'cor' => trim($desc_content[$i + 5]),
                ];
                $desc[] = $desc_data;
            }
        }     
        // roda todas as desc, separando por ano, quilometragem, combustiveis, etc
        $precos = $page->filter('.card__price-number')->each(function($node, $i) {
            return $node->text();
        });

        $has_insert = 0;
        // assimila todos os dados para um único array
        if(isset($titulos[0])) {     
            // $final_array = [];
            foreach($titulos as $k => $v) {
                $hash_veiculo = md5($v);
                if(!Cars::where('hash_veiculo', $hash_veiculo)->first()) {
                    $final_array = [
                        'user_id' => Auth::user()->id,
                        'nome_veiculo' => $v,
                        'hash_veiculo' => $hash_veiculo,
                        'link' => $links[$k],
                        'valor' => $precos[$k],
                        'foto' => $fotos[$k],
                        'ano' => $desc[$k]['ano'],
                        'quilometragem' => $desc[$k]['quilometragem'],
                        'combustivel' => $desc[$k]['combustivel'],
                        'cambio' => $desc[$k]['cambio'],
                        'portas' => $desc[$k]['portas'],
                        'cor' => $desc[$k]['cor'],
                    ];
                    Cars::create($final_array);
                    $has_insert++;
                }
            }
        }

        echo $has_insert;

        if($has_insert > 0) {
            return redirect()
                ->route('dashboard')
                ->with('qtd_carros', $has_insert)
                ->with('status', 200); // ok
        } else if(!isset($titulos[0])) {
            return redirect()
                ->route('dashboard')
                ->with('status', 404); // nenhum carro encontrado
        } else {
            return redirect()
                ->route('dashboard')
                ->with('status', 403); // Carros desta busca já cadastrado
        }
    }

    public function destroy(Request $request) {
        $id = $request->id;
        if(!$car = Cars::find($id)) {
            return redirect()->route('dashboard');
        }
        $nome = $car->nome_veiculo;
        $car->delete();
        return redirect()->route('dashboard')->with('status', 201)->with('carro_deletado', $nome);
    }
}
