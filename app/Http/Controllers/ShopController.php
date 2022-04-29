<?php

namespace App\Http\Controllers;

use App\Http\Resources\SaleResource;
use App\Http\Resources\ShopResource;
use App\Models\Membership;
use App\Models\Sale;
use App\Models\Shop;
use App\Models\ShopMembership;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Inertia\Inertia;


class ShopController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        Inertia::setRootView('user');

        $shop = Auth::user()->shop[0];

        return Inertia::render('Shop/Dashboard', [
            'shop' => new ShopResource($shop),
            'sales' => SaleResource::collection(Sale::where('shop_id', '=', $shop->id)->get())
        ]);
    }

    public function showShopSettings()
    {
        Inertia::setRootView('shopadmin');

        return Inertia::render('ShopDashboard/GeneralSettings', [
            'shop' => new ShopResource(Auth::user()->shop[0])
        ]);
    }

    public function showShopMembership()
    {
        Inertia::setRootView('shopadmin');

        return Inertia::render('ShopDashboard/Membership', [
            'shop' => new ShopResource(Auth::user()->shop[0])
        ]);
    }

    public function payment(Shop $shop)
    {
        return Inertia::render('PaymentShop', [
            'shop' => new ShopResource($shop),
            'token' => $this->brainTreeClient()->ClientToken()->generate()
        ]);
    }

    public function sales()
    {
        Inertia::setRootView('shopadmin');

        $shop = Auth::user()->shop[0];
        return Inertia::render('ShopDashboard/Sales', [
            'shop' => new ShopResource($shop),
            'sales' => SaleResource::collection(Sale::where('shop_id', '=', $shop->id)->get())
        ]);
    }

    public function orders()
    {
        Inertia::setRootView('user');

        $shop = Auth::user()->shop[0];
        return Inertia::render('Shop/Orders/Index', [
            'shop' => new ShopResource($shop),
            'sales' => SaleResource::collection(Sale::where('shop_id', '=', $shop->id)->get())
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $data = $request->all();

        $shop_data = $request->validate([
            'name' => 'required',
            'description' => 'required'
        ]);
        $shop_data['user_id'] = Auth::user()->id;

        if ($request->hasFile('image')) {
            $extension = $request->image->extension();
            $request->image->storeAs('/public', $data['name'] . "." . $extension);
            // $request->image->move(public_path('images'), $imageName);
            $shop_data['image'] = $data['name'] . "." . $extension;
        }
        $shop_data['status'] = 'Pending';
        $shop = Shop::create($shop_data);
        ShopMembership::create([
            'shop_id' => $shop->id,
            'membership_id' => $request->membership_id,
            'period' => 0,
            'transaction_id' => 1,
        ]);
        return redirect()->intended('/shop/pending')->with('success', 'Application Sent');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Shop  $shop
     * @return \Illuminate\Http\Response
     */
    public function show(Shop $shop)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Shop  $shop
     * @return \Illuminate\Http\Response
     */
    public function edit(Shop $shop)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Shop  $shop
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Shop $shop)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Shop  $shop
     * @return \Illuminate\Http\Response
     */
    public function destroy(Shop $shop)
    {
        //
    }

    public function getShopRegister()
    {
        return Inertia::render('VendorRegister', [
            'memberships' => Membership::all()
        ]);
    }

    public function shopWaiting()
    {
        return Inertia::render('ShopWaiting', [
            'message' => "Application for shop creation have been received please wait for Approval",
            'contact_phone' => "+263772440088",
            'email' => 'support@telefarm.com'
        ]);
    }
    public function shopPending()
    {
        return Inertia::render('ShopPending');
    }
}
