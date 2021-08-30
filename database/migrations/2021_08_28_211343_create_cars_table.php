<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCarsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('cars', function (Blueprint $table) {
            $table->id();
            $table->integer('user_id');
            $table->string('nome_veiculo', '510');
            $table->string('hash_veiculo', '255');
            $table->string('valor', '255');
            $table->string('foto', '255');
            $table->text('link');
            $table->string('ano', '255');
            $table->string('combustivel', '255');
            $table->string('portas', '255');
            $table->string('quilometragem', '255');
            $table->string('cambio', '255');
            $table->string('cor', '255');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('cars');
    }
}
