<?php
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Admin\ProductController;
use App\Http\Controllers\Admin\CategoryController;

Route::prefix('san-pham')->group(function () {
    Route::get('/', [ProductController::class, 'index'])->name('product.index');
    Route::get('demo-save', [ProductController::class, 'saveDemo']);
});

Route::prefix('danh-muc')->group(function () {
    Route::get('detail/{id}', [CategoryController::class, 'detail'])->name('category.detail');
});

?>