<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class CategoryResource extends JsonResource
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
            'name'=> $this->name,
            'slug'=> $this->slug,
            'description' => $this->desc,
            'image'=> $this->image,
            'sub_categories'=>  SubCategoryResource::collection($this->subcategories),
            'created_at' => $this->created_at
        ];
    }
}
