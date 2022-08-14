<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Carbon\Carbon;
use App\Models\Coupon;

class CouponController extends Controller
{
    function add_coupon(){
        $coupons = Coupon::all();
        return view('admins.coupon.index',[
            'coupons' => $coupons,
        ]);
    }

    function coupon_store(Request $request){
        
        $request->validate([
            'coupon_name' => 'required',
            'amount' => 'required',
            'validity' => 'required',
            'min' => 'required',
            'max' => 'required',
        ]);
        Coupon::insert([
            'coupon_name' => $request->coupon_name,
            'type' => $request->type,
            'amount' => $request->amount,
            'validity' => $request->validity,
            'min' => $request->min,
            'max' => $request->max,
            'created_at' => Carbon::now(),
        ]);
        return back()->with('succes','Coupon ADDED');
    }

    function coupon_update($coupon_id){
        $coupon = Coupon::find($coupon_id);
        if($coupon->status == 0){
            Coupon::find($coupon_id)->update([
                'status' => 1,
            ]);
            return back()->with('status','This Coupon Is Active Now');
        }
        else{
            Coupon::find($coupon_id)->update([
                'status' => 0,
            ]);
            return back()->with('status','This Coupon Is Deactive Now');
        }
        
    }
}
