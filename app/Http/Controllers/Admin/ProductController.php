<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Product;

class ProductController extends Controller
{
    public function index(){
        // Lấy ra danh sách sản phẩm & phân trang cho nó
        $products = Product::all();

        // trả về cho người dùng 1 giao diện + dữ liệu products vừa lấy đc 
        return view('admin.products.index', ['data_product' => $products]);
    }
}
