<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Dashboard') }}
        </h2>
    </x-slot>

    <br><br>
    @if (session('status') && session('status') == 200)
        <div class="py-2">
            <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
                <div class="alert alert-success" role="alert">
                    {{ session('qtd_carros') }} Carro(s) cadastrado(s) com sucesso!
                </div>
            </div>
        </div>
        <br>
    @endif

    @if (session('status') && session('status') == 201)
        <div class="py-2">
            <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
                <div class="alert alert-success" role="alert">
                    {{ session('carro_deletado') }} removido com sucesso!
                </div>
            </div>
        </div>
        <br>
    @endif

    @if (session('status') && session('status') == 404)
        <div class="py-2">
            <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
                <div class="alert alert-danger" role="alert">
                    Nenhum carro foi encontrado
                </div>
            </div>
        </div>
        <br>
    @endif

    @if (session('status') && session('status') == 403)
        <div class="py-2">
            <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
                <div class="alert alert-danger" role="alert">
                    Todos os Carros encontrados já foram cadastrados!
                </div>
            </div>
        </div>
        <br>
    @endif

    {{-- loop de carros --}}
    @if (isset($cars[0]))
        @foreach ($cars as $car)
            <div class="py-2">
                <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
                    <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                        <div class="p-6 bg-white border-b border-gray-200">
                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="row">
                                        <div class="col-sm-12 col-xs-12 col-md-3 col-lg-3">
                                            <img src="{{ $car->foto }}" class="foto-list">
                                        </div>
                                        <div class="col-sm-12 col-xs-12 col-md-9 col-lg-9">
                                            <div class="row">
                                                <div class="col-12">
                                                    <h5>
                                                        <a target="_blank" href="{{ $car->link }}" class="text-link" >
                                                            <b>{{ $car->nome_veiculo }}</b>
                                                        </a>
                                                        <button class="btn btn-danger btn-sm float-right mr-2"
                                                            onclick="pre_remove({{ $car->id }})">Remover</button>
                                                    </h5>
                                                </div>
                                                <div class="col-12 col-sm-12 col-xs-12 col-md-6 col-lg-6">
                                                    <div class="div-content">
                                                        <b>Ano: </b> {{ $car->ano }}
                                                    </div>
                                                </div>
                                                <div class="col-12 col-sm-12 col-xs-12 col-md-6 col-lg-6">
                                                    <div class="div-content">
                                                        <b>Km: </b> {{ $car->quilometragem }}
                                                    </div>
                                                </div>
                                                <div class="col-12 col-sm-12 col-xs-12 col-md-6 col-lg-6">
                                                    <div class="div-content">
                                                        <b>Combustível: </b> {{ $car->gasolina }}
                                                    </div>
                                                </div>
                                                <div class="col-12 col-sm-12 col-xs-12 col-md-6 col-lg-6">
                                                    <div class="div-content">
                                                        <b>Câmbio: </b> {{ $car->cambio }}
                                                    </div>
                                                </div>
                                                <div class="col-12 col-sm-12 col-xs-12 col-md-6 col-lg-6">
                                                    <div class="div-content">
                                                        <b>Portas: </b> {{ $car->portas }}
                                                    </div>
                                                </div>
                                                <div class="col-12 col-sm-12 col-xs-12 col-md-6 col-lg-6">
                                                    <div class="div-content">
                                                        <b>Cor: </b> {{ $car->cor }}
                                                    </div>
                                                </div>

                                                <div class="col-12 mt-2 text-right">
                                                    <br>
                                                    <h4><b>Preço: </b> <span class="text-custom">R$
                                                            {{ $car->valor }}</span></h4>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>


                            </div>
                        </div>
                    </div>
                </div>
            </div>
        @endforeach
    @else
        <div class="py-2">
            <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
                <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                    <div class="p-6 bg-white border-b border-gray-200">
                        <h4>Nenhum carro foi encontrado</h4>
                    </div>
                </div>
            </div>
        </div>
    @endif
    {{-- loop de carros --}}




    <div class="modal fade" id="modalRemove" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Remover Carro</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <h4 class="text-center text-warning">Atenção</h4>
                    <p class="text-center">
                        Você está prestes a <b>remover um registro!</b> Deseja continuar?
                    </p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                    <form action="{{ route('cars.destroy') }}" method="post">
                        @method('DELETE')
                        @csrf
                        <input type="hidden" name="id" id="id_remove">
                        <button type="submit" class="btn btn-danger">Sim, remover registro</button>
                    </form>
                </div>
            </div>
        </div>
    </div>

</x-app-layout>
