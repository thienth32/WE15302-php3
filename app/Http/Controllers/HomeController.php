<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Category;
class HomeController extends Controller
{
    public function index(){
        dd(1);
        return view('home.index');
    }

    public function removeCate($cateId){
        $cate = Category::find($cateId);
        if(!$cate){
            return "Đường dẫn không tồn tại";
        }

        $cate->delete();
        return redirect(route('homepage'));
    }
}
