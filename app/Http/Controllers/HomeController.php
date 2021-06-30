<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function thongtin(){
        return view('user.info');
    }
    public function showData(Request $request){
        $name = $request->name;
        $birthday = $request->birthday;
        $gender = $request->gender;

        // [$tokens, $name, $birthday, $gender] = $request->all();
        return view('user.user-info', compact('name', 'birthday', 'gender'));
    }
}
