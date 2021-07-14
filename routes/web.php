<?php

use App\Http\Controllers\UserController;
use App\Http\Controllers\HomeController;
use Illuminate\Support\Facades\Route;

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

Route::get('/trang-chu', function () {
    return view('welcome');
})->name('homepage');

Route::get('detail/{id}/{name}', function(){

})->name('detail');


Route::get('demo', function(){
    $id = 100;
    $name = "poly";
    return route('detail', ['id' => $id, 'name' => $name]);
});

Route::prefix('admin')->group(function () {
    Route::get('dashboard', function(){}); // localhost:8000/admin/dashboard
    
    Route::prefix('product')->group(function(){
        Route::get('/', function(){}); // localhost:8000/admin/product
        Route::get('/add', function(){}); // localhost:8000/admin/product/add
    });
    Route::get('categories', function(){});
});
