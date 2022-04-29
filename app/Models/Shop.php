<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class Shop extends Model
{
    use HasFactory;

    protected $guarded;

    public function products()
    {
        return $this->hasMany(Product::class);
    }

    public function transaction()
    {
        return $this->belongsTo(Transaction::class); 
    }

    public function user()
    {
        return $this->belongsTo(User::class);
    }

    public function membership()
    {
        return $this->hasMany(ShopMembership::class);
    }
}
