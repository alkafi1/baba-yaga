<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Order;
use App\Models\Order_product_details;
use Auth;
use PDF;
use Carbon\Carbon;

class AccountController extends Controller
{
    function account(){
        $order_infos = Order::where('user_id', Auth::guard('customerlogin')->id())->get();
        return view('frontend.account',[
            'order_infos' => $order_infos,
        ]);
    }

    function invoice_download($order_id){
        $data = ['order_id' => $order_id,];
        $pdf = PDF::loadView('invoice.invoice_download',$data);
        return $pdf->download('OrderInvoice.pdf');
    }

    function review_store(Request $request){
        Order_product_details::where('user_id', $request->user_id)->where('product_id',$request->product_id)->update([
            'review' => $request->review,
            'star' => $request->star,
            'updated_at' => Carbon::now(),
        ]);
        return back();
    }
}
