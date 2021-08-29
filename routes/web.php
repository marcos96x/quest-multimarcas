<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Auth\AuthenticatedSessionController;
use App\Http\Controllers\CarsController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::post('/cars/search', [CarsController::class, 'search'])->middleware('auth')->name('cars.search');
Route::delete('/cars/destroy', [CarsController::class, 'destroy'])->middleware('auth')->name('cars.destroy');
Route::get('/', [AuthenticatedSessionController::class, 'create'])->middleware('guest')->name('login');

Route::get('/dashboard', [CarsController::class, 'dashboard'])->middleware(['auth'])->name('dashboard');


require __DIR__.'/auth.php';
