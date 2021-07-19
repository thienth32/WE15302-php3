<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Category;

class CategoryController extends Controller
{
    public function detail($id){
        $cate = Category::find($id);
        $cate->load('products');
        return view('admin.category.detail', ['cate' => $cate]);
    }
}
