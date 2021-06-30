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

Route::get('/', function () {
    return view('welcome');
});
Route::get('users', 
    [UserController::class, 'index']);
Route::get('thong-tin-ca-nhan', 
    [HomeController::class, 'thongtin']);
Route::post('show-thong-tin', 
    [HomeController::class, 'showData']);