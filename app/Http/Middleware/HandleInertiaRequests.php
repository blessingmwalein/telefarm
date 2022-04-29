<?php

namespace App\Http\Middleware;

use Illuminate\Http\Request;
use Inertia\Middleware;
use Cart;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;

class HandleInertiaRequests extends Middleware
{
    /**
     * The root template that's loaded on the first page visit.
     *
     * @see https://inertiajs.com/server-side-setup#root-template
     * @var string
     */
    protected $rootView = 'app';

    /**
     * Determines the current asset version.
     *
     * @see https://inertiajs.com/asset-versioning
     * @param  \Illuminate\Http\Request  $request
     * @return string|null
     */
    public function version(Request $request)
    {
        return parent::version($request);
    }

    /**
     * Defines the props that are shared by default.
     *
     * @see https://inertiajs.com/shared-data
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function share(Request $request)
    {
        return array_merge(parent::share($request), [
            'auth' => function () use ($request) {
                return [
                    'user' => $request->user() ? [
                        'id' => $request->user()->id,
                        'email' => $request->user()->email,
                        'shop' => Auth::user()->shop->first()? Auth::user()->shop->first() : false
                    ] : null,
                ];
            },
            'flash' => function () use ($request) {
                return [
                    'success' => $request->session()->get('success'),
                    'error' => $request->session()->get('error'),
                ];
            },
            "cart" => function () use ($request) {
                return Auth::user() ? [
                    'cart' =>  Cart::session(Auth::user()->id)->getContent(),
                    'cartTotal' => Cart::session(Auth::user()->id)->getTotalQuantity(),
                    'cartTotalPrice' => Cart::session(Auth::user()->id)->getTotal(),
                    'auth' => true
                ] : [
                    'auth' => false
                ];
            },
        ]);
    }
}
