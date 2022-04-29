<?php

namespace App\Http\Controllers;

use App\Http\Resources\OrderResource;
use Illuminate\Http\Request;
use Inertia\Inertia;
use App\Models\Order;
use App\Models\Sale;
use App\Models\Shop;
use App\Models\ShopMembership;
use App\Models\Transaction;

class CheckoutController extends Controller
{
    public function payment(Order $order)
    {
        return Inertia::render('Payment', [
            'order' => new OrderResource($order),
            'token' => $this->brainTreeClient()->ClientToken()->generate()
        ]);
    }

    public function order()
    {
        return Inertia::render('Order', []);
    }



    public function paymentBraintree(Request $request, Order $order)
    {

        $amount = $request->input('amount');
        $nonce = $request->input('payment_method_nonce');

        $result = $this->brainTreeClient()->transaction()->sale([
            'amount' => $amount,
            'paymentMethodNonce' => $nonce,
            'customer' => [
                'firstName' => $request->first_name,
                'lastName' => $request->last_name,
                'email' => $request->email,
            ],
            'options' => [
                'submitForSettlement' => true
            ]
        ]);

        if ($result->success) {
            $transaction = $result->transaction;

            $transactionModel = Transaction::create([
                'amount' => $amount,
                'type' => 'Payment Of Goods',
                'status' => $transaction->status,
                'status_link' => $transaction->id,
                'method' => $transaction->paymentInstrumentType
            ]);
            $order->status = $transaction->status;
            $order->transaction_id = $transactionModel->id;
            $order->save();

            $this->saveSales($order->order_items);

            return response()->json(['message' => 'Transaction successful', 'transactions' => $transactionModel, 'order' => $order]);
        } else {
            $errorString = "";
            foreach ($result->errors->deepAll() as $error) {
                $errorString .= 'Error: ' . $error->code . ": " . $error->message . "\n";
            }
            return response()->json(['message' => 'An error occurred with the message', 'result' => $result->message]);
        }
    }

    public function paymentShopBraintree(Request $request, Shop $shop)
    {
        $amount = $request->input('amount');
        $nonce = $request->input('payment_method_nonce');

        $result = $this->brainTreeClient()->transaction()->sale([
            'amount' => $amount,
            'paymentMethodNonce' => $nonce,
            'customer' => [
                'firstName' => $request->first_name,
                'lastName' => $request->last_name,
                'email' => $request->email,
            ],
            'options' => [
                'submitForSettlement' => true
            ]
        ]);

        if ($result->success) {
            $transaction = $result->transaction;

            $transactionModel = Transaction::create([
                'amount' => $amount,
                'type' => 'Payment Of Shop Subscription',
                'status' => $transaction->status,
                'status_link' => $transaction->id,
                'method' => $transaction->paymentInstrumentType
            ]);

            $shop_memebership = ShopMembership::where('shop_id', '=', $shop->id)->first();
            $shop->status = $transaction->status;
            $shop->save();
            $shop_memebership->transaction_id = $transactionModel->id;
            $shop_memebership->status = $transaction->status;
            $shop_memebership->save();
            return response()->json(['message' => 'Transaction successful', 'transactions' => $transactionModel, 'order' => $shop]);
        } else {
            $errorString = "";
            foreach ($result->errors->deepAll() as $error) {
                $errorString .= 'Error: ' . $error->code . ": " . $error->message . "\n";
            }
            return response()->json(['message' => 'An error occurred with the message', 'result' => $result->message]);
        }
    }

    public function saveSales($cartItems)
    {
        $items = json_decode($cartItems);

        foreach ($items as $item) {
            Sale::create([
                'product_id' => $item->id,
                'shop_id' => $item->shop_id,
                'units_sold' => $this->getUnits($item->properties)
            ]);
        }
    }

    public function getUnits($props)
    {
        $total = 0;
        foreach ($props as $prop) {
            $total = $total + $prop->quantity;
        }
        return $total;
    }
}
