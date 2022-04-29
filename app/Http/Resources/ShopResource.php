<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class ShopResource extends JsonResource
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
            'name' => $this->name,
            'description' => $this->description,
            'products' => ProductResource::collection($this->products),
            'transaction' => $this->transaction,
            'membership' => $this->membership,
            'user' => $this->user,
            'status' => $this->status,
            'image' => $this->image,
            'created_at'=> $this->created_at
        ];
    }
}
