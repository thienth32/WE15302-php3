<?php
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Admin\ProductController;

Route::prefix('san-pham')->group(function () {
    Route::get('/', [ProductController::class, 'index'])->name('product.index');
});

?>