<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class ProductResource extends JsonResource
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
            'id'=> $this->id,
            'name' => $this->name,
            'slug'=> $this->slug,
            'price' => $this->price,
            'image'=> $this->image,
            'images'=> $this->images,
            'properties'=>json_decode($this->properties),
            'sub_category_id' => $this->sub_category_id,
            'sub_category' => $this->subcategory,
            'shop'=> $this->shop,
            'created_at'=>$this->created_at,
            'desc' => $this->desc,
        ];
    }
}
