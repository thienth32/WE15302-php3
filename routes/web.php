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

use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;
Route::get('config/prepare-role-n-permission', function(){
    Role::create(['name' => 'admin']);
    Role::create(['name' => 'editor']);
    Role::create(['name' => 'moderator']);

    Permission::create(['name' => 'add product']);
    Permission::create(['name' => 'remove product']);

    $adminRole = Role::find(1);
    $editorRole = Role::find(2);
    $modRole = Role::find(3);
    
    $addProPer = Permission::find(1);
    $removeProPer = Permission::find(2);

    $adminRole->givePermissionTo($addProPer);
    $adminRole->givePermissionTo($removeProPer);
    
    $editorRole->givePermissionTo($addProPer);
    
    $modRole->givePermissionTo($removeProPer);

    // tài khoản id = 2 là tài khoản quản trị tối cao
    $adminAcc = User::find(2);
    $adminAcc->assignRole('admin');

    // tài khoản id = 1 là tài khoản của moderator
    $modAcc = User::find(1);
    $modAcc->assignRole('moderator');

    return "done";

});


