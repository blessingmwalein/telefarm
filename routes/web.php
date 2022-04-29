<?php

use App\Http\Controllers\CartController;
use App\Http\Controllers\CheckoutController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\OrderController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\ShopController;
use App\Http\Controllers\UserAddressController;
use App\Http\Controllers\UserController;
use App\Http\Resources\CategoryResource;
use App\Models\Shop;
use App\Models\UserAddress;
use Illuminate\Foundation\Application;
use Illuminate\Support\Facades\Route;
use Inertia\Inertia;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/home', function () {
    return Inertia::render('Welcome', [
        'canLogin' => Route::has('login'),
        'canRegister' => Route::has('register'),
        'laravelVersion' => Application::VERSION,
        'phpVersion' => PHP_VERSION,
    ]);
});

// Route::middleware(['auth:sanctum', 'verified'])->get('/dashboard', function () {
//     return Inertia::render('Dashboard');
// })->name('dashboard');
Route::middleware(['auth:sanctum'])->group(function () {
    // Route::get('/dashboard', function () {
    //     return Inertia::render('Dashboard');
    // })->name('dashboard');
    //shop routes\
    Route::middleware(['has_shop'])->group(function () {
        Route::get('/vendor-register',  [ShopController::class, 'getShopRegister'])->name('vendor-register');
        Route::get('/shop/waiting',  [ShopController::class, 'shopWaiting'])->name('shop-waiting');
        Route::get('/shop/dashboad', [ShopController::class, 'index']);
        Route::get('/shop/dashboad/sales', [ShopController::class, 'sales']);
        Route::post('/shop/create', [ShopController::class, 'store']);

        //shop products
        Route::get('/shop/products/create', [ProductController::class, 'create']);
        Route::post('/shop/products/create', [ProductController::class, 'store']);
        Route::get('/shop/products', [ProductController::class, 'index']);
        Route::get('/shop/products/edit/{product}', [ProductController::class, 'edit']);
        Route::get('/shop/products/{product}', [ProductController::class, 'viewShopProduct']);
        Route::post('/shop/products/edit/{product}', [ProductController::class, 'update']);

        //shop settings
        Route::get('/shop/general/settings', [ShopController::class, 'showShopSettings']);
        Route::get('/shop/billing/settings', [ShopController::class, 'showShopMembership']);
    });
    Route::get('/shop/pending',  [ShopController::class, 'shopPending'])->name('shop-pending');


    Route::get('/products/checkout', [ProductController::class, 'checkout']);
    Route::get('/order/payment/{order}', [CheckoutController::class, 'payment']);
    Route::get('/shop/payment/{shop}', [ShopController::class, 'payment']);

    Route::get('/order/{order}', [CheckoutController::class, 'order']);
    Route::post('/order/create', [OrderController::class, 'store'])->name('order.store');
    Route::post('/order/update/{order}', [OrderController::class, 'update']);

    Route::post('/order/payment/braintree/{order}', [CheckoutController::class, 'paymentBraintree']);
    Route::post('/shop/payment/braintree/{shop}', [CheckoutController::class, 'paymentShopBraintree']);

    //user routes
    Route::get('/user/dashboard', [UserController::class, 'index']);
    Route::get('/user/dashboard/profile', [UserController::class, 'profile']);
    Route::get('/user/dashboard/address', [UserController::class, 'address']);
    Route::get('/user/dashboard/security', [UserController::class, 'security']);
    Route::get('/user/dashboard/orders', [UserController::class, 'orders']);
    Route::get('/user/dashboard/orders/{order}', [UserController::class, 'order']);

    Route::resource('cart', CartController::class);
    Route::post('address', [UserAddressController::class, 'destroy']);
    Route::put('bulk-cart', [CartController::class, 'bulkUpdate'])->name('bulk-cart.update');

    //account routes

});

Route::get('/dashboard', [HomeController::class, 'index'])->name('dashboard');

Route::get('/', [HomeController::class, 'index']);
Route::get('/shop/{shop}', [HomeController::class, 'showShop']);
Route::get('/main-shop', [HomeController::class, 'showMainShop']);
Route::get('/product/{product}', [ProductController::class, 'show']);
Route::get('/products/cart', [HomeController::class, 'showCart']);
Route::get('/shop/search/products', [ProductController::class, 'search']);
