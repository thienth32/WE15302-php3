<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Category;
class HomeController extends Controller
{
    public function index(){
        // lấy danh mục trong db
        $cates = Category::all();
        // sinh ra view & truyền dữ liệu ra ngoài view
        return view('home.index', ['cates' => $cates]);
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
