<?php

use App\Http\Controllers\HomeController;
use App\Http\Controllers\LoginController;
use App\Models\User;
use Illuminate\Support\Facades\Auth;
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

Route::get('/', [HomeController::class, 'index'])->name('homepage');
Route::get('danh-muc/xoa/{id}', [HomeController::class, 'removeCate'])
            ->name('cate.remove');

Route::get('login', [LoginController::class, 'loginForm'])->name('login');
Route::post('login', [LoginController::class, 'postLogin']);
// Route::get('fake-login/{id}', function($id){
//     $user = User::find($id);
//     Auth::login($user);
//     return redirect(route('product.index'));
// });
Route::any('logout', function(){
    Auth::logout();
    return redirect(route('login'));
})->name('logout');


