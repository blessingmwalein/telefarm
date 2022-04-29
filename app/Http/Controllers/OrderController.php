<?php

namespace App\Http\Controllers;

use App\Models\Order;
use App\Models\User;
use App\Models\UserAddress;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class OrderController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
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
        // $addressData = $request->validate([
        //     'street' => 'required',
        //     'city' => 'required',
        //     'mobile' => 'required',
        // ]);

        // $addressData['user_id'] = Auth::user()->id;

        // $userAddress = UserAddress::create($addressData);

        // if ($userAddress) {

        //     $orderData = $request->validate([
        //         'first_name' => 'required',
        //         'last_name' => 'required',
        //         'order_notes' => 'required',
        //         'phone_number' => 'required',
        //         'order_items' => 'required',
        //         'email' => 'required'
        //     ]);

        //     $orderData['user_address_id'] = $userAddress->id;
        //     $orderData['status'] = 'Pending';
        //     $orderData['user_id'] = Auth::user()->id;

        //     $order = Order::create($orderData);

        //     return  $order;
        // }
        $orderData = $request->validate([
            'first_name' => 'required',
            'last_name' => 'required',
            'order_notes' => 'required',
            'mobile' => 'required',
            'order_items' => 'required',
            'email' => 'required | email'
        ]);

        $addressData = $request->validate([
            'city' => 'required',
            'street' => 'required',
            'mobile' => 'required | numeric'
        ]);

        $addressData['user_id'] = Auth::user()->id;
        $address = UserAddress::create($addressData);

        $orderData['user_address_id'] = $address->id;
        $orderData['status'] = 'Pending';
        $orderData['user_id'] = Auth::user()->id;

        $orderData['order_items']  = json_encode($orderData['order_items']);
        $order = Order::create($orderData);
        return redirect()->intended('/user/dashboard')->with('success', 'Order Placed Check Order Details for status');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Order  $order
     * @return \Illuminate\Http\Response
     */
    public function show(Order $order)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Order  $order
     * @return \Illuminate\Http\Response
     */
    public function edit(Order $order)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Order  $order
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Order $order)
    {

        $addressData = $request->validate([
            'street' => 'required',
            'city' => 'required',
            'mobile' => 'required',

        ]);

        $addressData['user_id'] = Auth::user()->id;

        $userAddress = UserAddress::where('id', '=', $order->user_address_id)->first();



        if ($userAddress->update($addressData)) {
            $orderData = $request->validate([
                'first_name' => 'required',
                'last_name' => 'required',
                'order_notes' => 'required',
                'phone_number' => 'required',
                'order_items' => 'required',
                'email' => 'required'
            ]);
            $orderData['user_address_id'] = $userAddress->id;
            $orderData['status'] = 'Pending';
            $orderData['user_id'] = Auth::user()->id;

            if ($order->update($orderData)) {
                return  $this->jsonSuccess('Order Updated', 200);
            }
            return  $this->jsonError('Something went wrong', 500);
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Order  $order
     * @return \Illuminate\Http\Response
     */
    public function destroy(Order $order)
    {
        //
    }
}
