<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Product extends Model
{
    use HasFactory, SoftDeletes;
    protected $table = 'products';

    public $fillable = [
        'name', 'cate_id', 'price', 'quantity', 'detail'
    ];

    public function category(){
        return $this->belongsTo(Category::class, 'cate_id');
    }

    public function galleries(){
        return $this->hasMany(ProductGallery::class, 'product_id');
    }

    public function tags(){
        return $this->belongsToMany(Tag::class, 'product_tag', 'product_id', 'tag_id');
    }
}
