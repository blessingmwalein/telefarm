<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Cart;


class CartController extends Controller
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
        Cart::session(Auth::user()->id)->add([
            'id' => $request->id,
            'name' => $request->name,
            'price' => $request->price,
            'quantity' => $request->quantity,
            'attributes' => array(
                'image' => $request->image,
            )
        ]);

        return redirect()->back()->with('success', 'Product added to cart.');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request)
    {
        Cart::session(Auth::user()->id)->update(
            $request->id,
            [
                'quantity' => $request->quantity,
                'price' => $request->price
            ]
        );

        // session()->flash('success', 'Item Cart is Updated Successfully !');

        return redirect()->back()->with('success', 'Cart item updated.');
    }

    public function bulkUpdate(Request $request)
    {
        foreach ($request->items as $key => $item) {
            Cart::session(Auth::user()->id)->update(
                $item['id'],
                [
                    'quantity' => $item['quantity'],
                    'price' => $item['price']
                ]
            );
        }

        return redirect()->back()->with('success', 'Cart items updated.');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request)
    {
        Cart::session(Auth::user()->id)->remove($request->id);
        return redirect()->back()->with('success', 'Product removed from cart');
    }
}
