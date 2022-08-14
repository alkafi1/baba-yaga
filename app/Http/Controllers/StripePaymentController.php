<?php
   
namespace App\Http\Controllers;
   
use Illuminate\Http\Request;
use Session;
use Stripe;
use App\Models\Order;
use App\Models\BillingDetails;
use App\Models\Order_product_details;
use App\Models\Inventory;
use App\Models\Cart;
use Carbon\Carbon;
use Mail;
use App\Mail\Invoice;
use Auth;
   
class StripePaymentController extends Controller
{
    /**
     * success response method.
     *
     * @return \Illuminate\Http\Response
     */
    public function stripe()
    {
        return view('stripe');
    }
  
    /**
     * success response method.
     *
     * @return \Illuminate\Http\Response
     */
    public function stripePost(Request $request)
    {
        
        Stripe\Stripe::setApiKey(env('STRIPE_SECRET'));
        Stripe\Charge::create ([
                "amount" => 100 * $request->total,
                "currency" => "BDT",
                "source" => $request->stripeToken,
                "description" => "Test payment from itsolutionstuff.com." 
        ]);
  
        Session::flash('success', 'Payment successful!');
          
        $data = session('data');
        $order_id = Order::insertGetId([
                'user_id' => Auth::guard('customerlogin')->id(),
                'sub_total' => $data['sub_total'],
                'discount' => $data['discount'],
                'charge' => $data['charge'],
                'total' => $data['total'],
                'created_at' => Carbon::now(),
            ]);

            BillingDetails::insert([
                'order_id' => $order_id,
                'user_id' => Auth::guard('customerlogin')->id(),
                'name' => $data['name'],
                'email' => $data['email'],
                'company' => $data['company'],
                'phone' => $data['phone'],
                'division_id' => $data['division_id'],
                'district_id' => $data['district_id'],
                'address' => $data['address'],
                'order_note' => $data['order_notes'],
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
            // $url = "http://66.45.237.70/api.php";
            // $number = $data['phone'];
            // $text="Hello Rupam Vai";
            // $datas= array(
            //     'username'=> "Tahminadina",
            //     'password'=> "FX5MPCEZ",
            //     'number'=>"$number",
            //     'message'=>"$text",
            // );

            // $ch = curl_init(); // Initialize cURL
            // curl_setopt($ch, CURLOPT_URL,$url);
            // curl_setopt($ch, CURLOPT_POSTFIELDS, http_build_query($datas));
            // curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
            // $smsresult = curl_exec($ch);
            // $p = explode("|",$smsresult);
            // $sendstatus = $p[0];

            //email invoice send
            Mail::to($data['email'])->send(new Invoice($order_id));
            Cart::where('user_id',Auth::Guard('customerlogin')->id())->delete();
            return redirect()->route('order.success')->with('success',$data['name']);
    }
}