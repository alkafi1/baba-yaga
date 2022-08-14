<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\CustomerLogin;
use App\Models\CustomerPassReset;
use App\Models\CustomerEmailVerify;
use Carbon\Carbon;
use App\Notifications\PassRessetNotification;
use Auth;
use Notification;
use Hash;

class CustomerLoginController extends Controller
{
    //
    function customer_login(Request $request){
        $customer_data = $request->all();
        if(Auth::guard('customerlogin')->attempt(['email' => $customer_data['email'], 'password' => $customer_data['password']])){
            if(Auth::guard('customerlogin')->user()->email_verified_at ==null ){
                return back()->with('success','Please check Email And Verify your Email.');;
            }
            else{
                return redirect('/');
            }
        }
        else{
            return back();
        }
    }
    function customer_email_verify($token){
        $customer = CustomerEmailVerify::where('token', $token)->firstOrfail();
        $customer_id = CustomerLogin::find($customer->customer_id);
            $customer_id->update([
                'email_verified_at' => Carbon::now(),
            ]);
        CustomerEmailVerify::where('customer_id',$customer->customer_id)->delete();
        return redirect()->route('customer_register')->with('success','Emaill Verfied Succesfully!!!');
    }

    function customer_logout(){
        Auth::guard('customerlogin')->logout();
        return redirect()->route('customer_register');
    }
    function customer_password_reset(){
        return view('pass_req_form');
    }

    function customer_pass_req_store(Request $request){
        $customer = CustomerLogin::where('email', $request->email)->firstOrfail();
        $delete = CustomerPassReset::where('customer_id', $customer->id)->delete();

        $pass_req_info = CustomerPassReset::create([
            'customer_id' => $customer->id,
            'token' => uniqid(),
            'created_at' => Carbon::now(),
        ]);
        Notification::send($customer, new PassRessetNotification($pass_req_info));
        return back()->with('success','Password Reset Link send Succesfully!!!');

    }

    function customer_pass_reset_form($token){
        if(CustomerPassReset::where('token',$token)->exists()){
            return view('pass_reset_form',compact('token'));
        }
        else{
            abort(404, 'We will Send Password Reset Link');
        }
        
    }
    
    function customer_pass_reset_update(Request $request){
        
        $customer = CustomerPassReset::where('token',$request->token)->firstOrfail();
        $customer_id = CustomerLogin::find($customer->customer_id);
        if($request->password == $request->con_password){
            
            $customer_id->update([
                'password' => bcrypt($request->password),
            ]);
        }
        else
        {
            return back()->with('dont_match','Password Do Not Match.');
        }

        CustomerPassReset::where('customer_id',$customer->customer_id)->delete();
        return redirect()->route('customer_register')->with('success','Password Updated Succesfully!!!');
    }
}
