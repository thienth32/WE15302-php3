<?php
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Admin\ProductController;
use App\Http\Controllers\Admin\CategoryController;
use App\Http\Controllers\UploadController;
use Illuminate\Support\Facades\DB;
use App\Models\Product;

Route::post('upload-file/{dirname}', [UploadController::class, 'saveUpload'])->name('upload.savefile');
Route::prefix('san-pham')->group(function () {
    Route::get('/', [ProductController::class, 'index'])->name('product.index');
    Route::get('xoa/{id}', [ProductController::class, 'remove'])->name('product.remove');
    Route::get('tao-moi', [ProductController::class, 'addForm'])->name('product.add');
    Route::post('tao-moi', [ProductController::class, 'saveAdd']);
    Route::get('cap-nhat/{id}', [ProductController::class, 'editForm'])->name('product.edit');
    Route::post('cap-nhat/{id}', [ProductController::class, 'saveEdit']);

    Route::get('demo', function(){
        // $products = DB::table('products')
        //                 ->select('products.name', 'products.id', 'categories.name as cate_name')
        //                 ->join('categories', 'products.cate_id', '=', 'categories.id')
        //                 ->where('products.id', '45')
        //                 ->get();
        // return response()->json($products);
        $products = Product::onlyTrashed()->get();
        dd($products);
                
    });
});

Route::prefix('danh-muc')->group(function () {
    Route::get('detail/{id}', [CategoryController::class, 'detail'])->name('category.detail');
});


?>