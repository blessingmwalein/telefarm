<?php

namespace App\Http\Controllers;

use App\Http\Resources\OrderResource;
use App\Http\Resources\UserResource;
use App\Models\Order;
use Illuminate\Http\Request;

use Illuminate\Support\Facades\Auth;
use Inertia\Inertia;

use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\DB;
use Jenssegers\Agent\Agent;
// use Laravel\Jetstream\Jetstream;

class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        Inertia::setRootView('user');

        $total = 0;
        foreach (Auth::user()->orders as $key => $order) {
            $items = json_decode($order->order_items);
            foreach ($items as $item) {
                $total += ($item->price * $item->quantity);
            }
        }

        // dd($total);
        return Inertia::render('User/Dashboard', [
            'user' => new UserResource(Auth::user()),
            'orders' => OrderResource::collection(Auth::user()->orders),
            'sessions' => $this->sessions($request)->all(),
            "order_total" => $total
        ]);
    }

    public function orders(Request $request)
    {
        Inertia::setRootView('user');

        $total = 0;
        foreach (Auth::user()->orders as $key => $order) {
            $items = json_decode($order->order_items);
            foreach ($items as $item) {
                $total += ($item->price * $item->quantity);
            }
        }

        // dd($total);
        return Inertia::render('User/Order', [
            'user' => new UserResource(Auth::user()),
            'orders' => OrderResource::collection(Auth::user()->orders),
            'sessions' => $this->sessions($request)->all(),
            "order_total" => $total
        ]);
    }
    public function address(Request $request)
    {
        Inertia::setRootView('user');

        $total = 0;
        foreach (Auth::user()->orders as $key => $order) {
            $items = json_decode($order->order_items);
            foreach ($items as $item) {
                $total += ($item->price * $item->quantity);
            }
        }

        // dd($total);
        return Inertia::render('User/Address', [
            'user' => new UserResource(Auth::user()),
            'addresses' => Auth::user()->address,
            'sessions' => $this->sessions($request)->all(),

        ]);
    }

    public function security()
    {

        Inertia::setRootView('user');

        return Inertia::render('User/Security', [
            'user' => new UserResource(Auth::user())
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function profile()
    {
        Inertia::setRootView('userdash');

        return Inertia::render('UserDashboard/Profile', [
            'user' => new UserResource(Auth::user())
        ]);
    }



    public function order(Order $order)
    {
        Inertia::setRootView('user');

        $totalOrder = 0;
        $items = json_decode($order->order_items);
        foreach ($items as $item) {
            $totalOrder += ($item->price * $item->quantity);
        }
        return Inertia::render('User/OrderDetail', [
            'user' => new UserResource(Auth::user()),
            'order' => new OrderResource($order),
            'totalOrder' => $totalOrder
        ]);
    }


    public function sessions(Request $request)
    {
        if (config('session.driver') !== 'database') {
            return collect();
        }

        return collect(
            DB::connection(config('session.connection'))->table(config('session.table', 'sessions'))
                ->where('user_id', $request->user()->getAuthIdentifier())
                ->orderBy('last_activity', 'desc')
                ->get()
        )->map(function ($session) use ($request) {
            $agent = $this->createAgent($session);

            return (object) [
                'agent' => [
                    'is_desktop' => $agent->isDesktop(),
                    'platform' => $agent->platform(),
                    'browser' => $agent->browser(),
                ],
                'ip_address' => $session->ip_address,
                'is_current_device' => $session->id === $request->session()->getId(),
                'last_active' => Carbon::createFromTimestamp($session->last_activity)->diffForHumans(),
            ];
        });
    }

    /**
     * Create a new agent instance from the given session.
     *
     * @param  mixed  $session
     * @return \Jenssegers\Agent\Agent
     */
    protected function createAgent($session)
    {
        return tap(new Agent, function ($agent) use ($session) {
            $agent->setUserAgent($session->user_agent);
        });
    }
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
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
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
