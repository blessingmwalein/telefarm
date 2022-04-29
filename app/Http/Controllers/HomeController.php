<?php

namespace App\Http\Controllers;

use App\Http\Resources\CategoryResource;
use App\Http\Resources\ProductResource;
use App\Http\Resources\ShopResource;
use App\Http\Resources\SubCategoryResource;
use App\Models\Category;
use App\Models\Color;
use App\Models\Product;
use App\Models\SubCategory;
use Illuminate\Http\Request;
use Illuminate\Foundation\Application;
use Illuminate\Support\Facades\Route;
use Inertia\Inertia;
use App\Models\Shop;
use Cart;
use Illuminate\Support\Facades\Auth;

class HomeController extends Controller
{
    public function index()
    {
        return Inertia::render('Home', [
            'canLogin' => Route::has('login'),
            'canRegister' => Route::has('register'),
            'laravelVersion' => Application::VERSION,
            'phpVersion' => PHP_VERSION,
            'categories' => CategoryResource::collection(Category::all()),
            'products' => ProductResource::collection(Product::all()),
            'shops' => ShopResource::collection(Shop::all()),
            'sub_categories' => SubCategoryResource::collection(SubCategory::all()->sortByDesc('created_at')->take(6)),

        ]);
    }

    public function showShop(Shop $shop)
    {
        return Inertia::render('Shop', [
            "shop" => new ShopResource($shop),
            'categories' => CategoryResource::collection(Category::all()),
            'shops' => ShopResource::collection(Shop::all()),
            'colors' => Color::all()
        ]);
    }

    public function showMainShop()
    {
        return Inertia::render('MainShop', [
            "products" => ProductResource::collection(Product::paginate(20)),
            'categories' => CategoryResource::collection(Category::all()),
            'shops' => ShopResource::collection(Shop::all()),
            'colors' => Color::all()
        ]);
    }

    public function showCart()
    {
        return Inertia::render('Cart');
    }
}
