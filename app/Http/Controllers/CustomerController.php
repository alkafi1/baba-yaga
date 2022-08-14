<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Carbon\Carbon;
use App\Models\CustomerLogin;
use App\Models\CustomerEmailVerify;
use App\Notifications\EmaillVerifyNotification;
use Notification;
class CustomerController extends Controller
{
    //
    function customer_register(){
            return view('frontend.customer_register');
    }

    function customer_register_store(Request $request){
        CustomerLogin::insert([
            'name' => $request->name,
            'password' =>bcrypt($request->password),
            'email' => $request->email,
            'created_at' => Carbon::now(),
        ]);

        $customer = CustomerLogin::where('email', $request->email)->firstOrfail();
        $delete = CustomerEmailVerify::where('customer_id', $customer->id)->delete();

        $email_info = CustomerEmailVerify::create([
            'customer_id' => $customer->id,
            'token' => uniqid(),
            'created_at' => Carbon::now(),
        ]);
        Notification::send($customer, new EmaillVerifyNotification($email_info));
        return back()->with('success','Please Verify Your Mail');
        
    }
}
