<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Auth;
use Carbon\carbon;
use App\Models\Cart;
use App\Models\Coupon;
use App\Models\Inventory;

class CartController extends Controller
{
    //
    function cart_store(Request $request){
        $stock_quantity = Inventory::where('product_id',$request->product_id)->where('color_id',$request->color_id)->where('size_id',$request->size_id)->first()->product_quantity;

        if(Auth::guard('customerlogin')->check()){
                if($stock_quantity > $request->quantity){
                    if(Cart::where('user_id', Auth::guard('customerlogin')->id())->where('product_id',$request->product_id)->where('color_id',$request->color_id)->where('size_id',$request->size_id)->exists()){

                    Cart::where('user_id', Auth::guard('customerlogin')->id())->where('product_id',$request->product_id)->where('color_id',$request->color_id)->where('size_id',$request->size_id)->increment('quantity',$request->quantity);

                    return back()->with('success','Item Has Been Updated');
                }
                else{
                        Cart::insert([
                        'user_id' => Auth::guard('customerlogin')->user()->id,
                        'product_id' => $request->product_id,
                        'color_id' => $request->color_id,
                        'size_id' => $request->size_id,
                        'quantity' => $request->quantity,
                        'created_at' => Carbon::now(),
                    ]);
                    return back()->with('success','Item Has Been Added');
                }
            }
            else{
                return back()->with('stock','Stock Out');
            }
        }
        else{
            return redirect()->route('customer_register')->with('login','Please Login First');
        }

        
    }

    function cart_remove($cart_id){
        Cart::find($cart_id)->delete();
        return back();
    }

    function cart_view(Request $request){
        $carts = Cart::where('user_id',Auth::guard('customerlogin')->id())->get();

        $cart_total = 0;
        $coupon_code = $request->coupon;
        $discount = null;
        $message = null;
        $type = null;
        if($coupon_code == ''){
            $discount = 0;
        }
        else{
            foreach($carts as $cart){
            $cart_total += $cart->rel_to_product->after_discount * $cart->quantity;
            }
        
            if(Coupon::where('coupon_name',$coupon_code)->where('status',1)->exists()){
                if(Coupon::where('coupon_name',$coupon_code)->first()->validity > Carbon::today()){

                    $min = Coupon::where('coupon_name',$coupon_code)->first()->min;
                    $max = Coupon::where('coupon_name',$coupon_code)->first()->max;

                    if($cart_total > $min && $cart_total < $max){

                        $discount = Coupon::where('coupon_name',$coupon_code)->first()->amount;
                        $type = Coupon::where('coupon_name',$coupon_code)->first()->type;
                    }
                    else{
                        $discount = 0;
                        $message = "Min Amount ".$min;
                    }
                    
                }
                else{
                    $discount = 0;
                    $message = "Coupon Code Expired ";

                }
            }
            else{
                $discount = 0;
                $message = "Invalid Coupon Code";
            }
        }
        
        

        return view('frontend.cart_view',[
            'carts' => $carts,
            'discount' => $discount,
            'message' => $message,
            'type' => $type,
        ]);
    }

    function cart_update(Request $request){
        foreach($request->quantity as $cart_id=>$quantity){
            Cart::find($cart_id)->update([
                'quantity' => $quantity,
            ]);
        }
        return back()->with('success','Item Has Been Updated');
    }
}
