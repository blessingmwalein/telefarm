<?php

namespace App\Http\Resources;

use App\Models\Transaction;
use App\Models\UserAddress;
use Illuminate\Http\Resources\Json\JsonResource;

class OrderResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        return [
            'id' => $this->id,
            'first_name' => $this->first_name,
            'email' => $this->email,
            'status' => $this->status,
            'user_address_id' => $this->user_address_id,
            'last_name' => $this->last_name,
            'created_at' => $this->created_at,
            'created_at_human' => $this->created_at->diffForHumans(),
            'order_notes' => $this->order_notes,
            'order_items' => json_decode($this->order_items),
            'address' => UserAddress::where('id', '=', $this->user_address_id)->first(),
            'transaction' => Transaction::where('id', '=', $this->transaction_id)->first(),
            'mobile' => $this->mobile,
            'transaction_id' => $this->transaction_id
        ];
    }
}
