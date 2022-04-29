<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    use HasFactory;

    protected $guarded;

    protected $with = ['address'];
    public function address()
    {
        return $this->belongsTo(UserAddress::class);
    }

    public function transaction()
    {
        return $this->belongsTo(Transaction::class);
    }
}
