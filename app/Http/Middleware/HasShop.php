<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Inertia\Inertia;

class HasShop
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle(Request $request, Closure $next)
    {
        $shop = Auth::user()->shop->first();

        // dd($shop);
        if ($shop) {
            if (strtolower($shop->status) == 'pending') {
                return redirect('/shop/pending');
            }
            // } else if (strtolower($shop->status) == 'active') {
            //     return redirect('/shop/dashboard');
            // } else {
            //     return redirect('/shop/not-active');
            // }
        } else {
            return redirect('/vendor-register');
        }
        return $next($request);
    }
}
