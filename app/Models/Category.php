<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Str;

class Category extends Model
{
    use HasFactory;

    protected $guarded;
    public static function boot()
    {
        parent::boot();

        // registering a callback to be executed upon the creation of an activity AR
        static::creating(function ($category) {
            // produce a slug based on the category title
            $slug = Str::slug($category->name);
            $category->slug = $slug;
        });
    }



    public function subcategories()
    {
        return $this->hasMany(SubCategory::class);
    }
}
