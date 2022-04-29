<?php

namespace App\Http\Controllers;

use Braintree;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Routing\Controller as BaseController;
use Inertia\Inertia;


class Controller extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;
    public function jsonError($error = "Unexpected Error Occurred", $status = 200)
    {
        return response()->json([
            "success" => false,
            "message" => $error
        ], $status);
    }

    public function jsonSuccess($message = "Request processed successfully", $status = 200)
    {
        return response()->json([
            "success" => true,
            "message" => $message
        ], $status);
    }

    public function brainTreeClient()
    {
        return new Braintree\Gateway([
            'environment' => config('services.braintree.environment'),
            'merchantId' => config('services.braintree.merchantId'),
            'publicKey' => config('services.braintree.publicKey'),
            'privateKey' => config('services.braintree.privateKey')
        ]);
    }
}
