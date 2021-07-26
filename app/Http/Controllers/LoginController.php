<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class LoginController extends Controller
{
    public function loginForm(Request $request){
        return view('auth.login');
    }

    public function postLogin(Request $request){
        // thực hiện validate bằng $request
        $request->validate(
            [
                'email' => 'required|email',
                'password' => 'required'
            ],
            [
                'email.required' => "Hãy nhập tài khoản",
                'email.email' => "Không đúng định dạng email",
                'password.required' => "Hãy nhập mật khẩu"
            ]
        );
        if(Auth::attempt(['email' => $request->email, 'password' => $request->password])
            || Auth::attempt(['phone_number' => $request->email, 'password' => $request->password])){
            
            return redirect(route('product.index'));
        }

        return redirect()->back()->with('msg', "Sai thông tin đăng nhập");
    }
}
