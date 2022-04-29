<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ShopMembership extends Model
{
    use HasFactory;

    protected $guarded;
    protected $with =['membership'];


    public function shop()
    {
        return $this->belongsTo(Shop::class);
    }

    public function membership()
    {
        return $this->belongsTo(Membership::class);
    }
}
