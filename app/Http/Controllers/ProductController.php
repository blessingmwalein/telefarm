<?php

namespace App\Http\Controllers;

use App\Http\Resources\CategoryResource;
use App\Http\Resources\ProductResource;
use App\Http\Resources\ShopResource;
use App\Http\Resources\SubCategoryResource;
use App\Models\Category;
use App\Models\Color;
use App\Models\Product;
use App\Models\Shop;
use App\Models\Size;
use App\Models\SubCategory;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Inertia\Inertia;


class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        Inertia::setRootView('user');

        return Inertia::render('Shop/Prodcts/Index', [
            'products' => ProductResource::collection(Auth::user()->shop->first()->products),
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        Inertia::setRootView('shopadmin');

        return Inertia::render('ShopDashboard/CreateNewProduct', [
            'sub_categories' => SubCategory::all(),
            'colors' => Color::all(),
            'sizes' => Size::all()
        ]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $product_data = $request->validate([
            'name' => 'required',
            'desc' => 'required',
            'price' => 'required',
            'sub_category_id' => 'required',
            'properties' => 'required'
        ]);

        $product_data['shop_id'] = Auth::user()->shop[0]->id;
        if ($request->hasFile('image')) {
            $extension = $request->image->extension();
            $request->image->storeAs('/public/product_images', $request['name'] . "." . $extension);
            // $request->image->move(public_path('images'), $imageName);
            $product_data['image'] = $request['name'] . "." . $extension;
        }

        if (Product::create($product_data)) {
            return $this->jsonSuccess('New product added', 200);
        }
        return $this->jsonError('Something went wrong while adding product');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function show(Product $product)
    {
        return Inertia::render('Product', [
            'product' => new ProductResource($product),
            'colors' => Color::all(),
            'sizes' => Size::all(),
            'r_products' => ProductResource::collection(Product::all()->take(6))
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function edit(Product $product)
    {


        Inertia::setRootView('shopadmin');

        return Inertia::render('ShopDashboard/EditShopProduct', [
            'product_prop' => new ProductResource($product),
            'category' => SubCategory::where('id', '=', $product->sub_category_id)->first(),
            'colors' => Color::all(),
            'sizes' => Size::all(),
            'categories' => SubCategory::all()
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Product $product)
    {
        $data = $request->all();

        if ($product->update($data)) {
            return $this->jsonSuccess('Product Updated Succsessfully', 200);
        }

        return $this->jsonError('Error while updating', 500);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function destroy(Product $product)
    {
        //
    }

    public function search(Request $request)
    {
        $query = $request->input('query');
        $products = Product::where('name', 'like', "%$query%")->orwhere('desc', 'like', "%$query%")->get();

        return Inertia::render('SearchResults', [
            "products" => ProductResource::collection($products),
            'categories' => CategoryResource::collection(Category::all()),
            'shops' => ShopResource::collection(Shop::all()),
            'colors' => Color::all(),
            'query' => $query
        ]);
    }

    public function checkout()
    {
        return Inertia::render('Checkout', []);
    }
}
