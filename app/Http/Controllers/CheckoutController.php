<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Cart;
use App\Models\Division;
use App\Models\District;
use App\Models\Order;
use App\Models\BillingDetails;
use App\Models\Order_product_details;
use App\Models\Inventory;
use Carbon\Carbon;
use Mail;
use App\Mail\Invoice;
use Auth;

class CheckoutController extends Controller
{
    //
    function checkout(){
        $divisions = Division::all();
        $districts = District::all();
        $carts = Cart::where('user_id',Auth::guard('customerlogin')->id())->get();
        $cart_total = 0;
        foreach($carts as $cart){
            $cart_total+= $cart->rel_to_product->after_discount * $cart->quantity;
        }
        return view('frontend.checkout',[
            'sub_total' => $cart_total,
            'divisions' => $divisions,
            'districts' => $districts,
        ]);
    }

    function getCity(Request $request){
        $str =' <option>-- Select District --</option>';
        $districts = District::where('division_id',$request->division_id)->get();
        foreach($districts as $district){
            $str.= '<option  class="default" value="'. $district->id .'">'. $district->bn_name .'</option>';
        }
        echo $str;
    }

    function order_store(Request $request){
        if($request->payment_method == 1){
            $order_id = Order::insertGetId([
                'user_id' => Auth::guard('customerlogin')->id(),
                'sub_total' => $request->sub_total,
                'discount' => $request->discount,
                'charge' => $request->charge,
                'total' => $request->total,
                'created_at' => Carbon::now(),
            ]);

            BillingDetails::insert([
                'order_id' => $order_id,
                'user_id' => Auth::guard('customerlogin')->id(),
                'name' => $request->name,
                'email' => $request->email,
                'company' => $request->company,
                'phone' => $request->phone,
                'division_id' => $request->division_id,
                'district_id' => $request->district_id,
                'address' => $request->address,
                'order_note' => $request->order_notes,
                'created_at' => Carbon::now(),
            ]);

            $carts = Cart::where('user_id',Auth::guard('customerlogin')->id())->get();
            foreach($carts as $cart){
                Order_product_details::insert([
                    'user_id' => Auth::guard('customerlogin')->id(),
                    'order_id' => $order_id,
                    'product_id' => $cart->product_id,
                    'color_id' => $cart->color_id,
                    'size_id' => $cart->size_id,
                    'price' => $cart->rel_to_product->after_discount,
                    'quantity' => $cart->quantity,
                    'created_at' => Carbon::now(),
                ]);
                Inventory::where('product_id',$cart->product_id)->where('color_id',$cart->color_id)->where('size_id',$cart->size_id)->decrement('product_quantity',$cart->quantity);

                
            }
            //sms send
            $url = "http://66.45.237.70/api.php";
            $number = $request->phone;
            $text="Hello Rupam Vai";
            $data= array(
                'username'=> "01719022853",
                'password'=> "ALru272..",
                'number'=>"$number",
                'message'=>"$text",
            );

            $ch = curl_init(); // Initialize cURL
            curl_setopt($ch, CURLOPT_URL,$url);
            curl_setopt($ch, CURLOPT_POSTFIELDS, http_build_query($data));
            curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
            $smsresult = curl_exec($ch);
            $p = explode("|",$smsresult);
            $sendstatus = $p[0];

            //email invoice send
            Mail::to($request->email)->send(new Invoice($order_id));
            Cart::where('user_id',Auth::Guard('customerlogin')->id())->delete();
            return redirect()->route('order.success')->with('success',$request->name);
        }
        else if($request->payment_method == 2){
            return view('ssl_pay',[
                'data' => $request->all(),
            ]);
        }
        else{
            return view('stripe',[
                'data' => $request->all(),
            ]);
        }
        
        
    }

    function order_success(){
        //return Order::where('user_id', Auth::guard('customerlogin')->id())->get();
        return view('frontend.order_success');
    }
}
