<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Str;


class Product extends Model
{
    use HasFactory;

    protected $guarded;
    protected $with=['subcategory'];

    public static function boot()
    {
        parent::boot();

        // registering a callback to be executed upon the creation of an activity AR
        static::creating(function ($product) {
            // produce a slug based on the product title
            $slug = Str::slug($product->name);
            $product->slug = $slug;
        });
    }

    public function subcategory()
    {
        return $this->belongsTo(SubCategory::class);
    }

    public function shop()
    {
        return $this->belongsTo(Shop::class);
    }

    public function images()
    {
        return $this->hasMany(ProductImage::class);
    }
}
