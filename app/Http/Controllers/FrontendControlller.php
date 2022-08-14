<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Category;
use App\Models\Color;
use App\Models\Inventory;
use App\Models\Size;
use App\Models\Product;
use App\Models\Order_product_details;

class FrontendControlller extends Controller
{
    function welcome()
    {
        return view('welcome');
    }
    
    function index()
    {
        $categories = Category::all();
        $products = Product::simplePaginate(6);
        $new_arrivals = Product::all()->sortByDesc('created_at');
        return view('frontend.index',[
            'categories' => $categories,
            'products' => $products,
            'new_arrivals' => $new_arrivals,
        ]);
    }

    function product_details($slug){
        $product_details = Product::where('slug',$slug)->get();
        $product_id = $product_details->first()->id;
        $available_colors = Inventory::where('product_id',$product_id)
        ->selectRaw('color_id, count(*) as tootal')
        ->groupBy('color_id')
        ->get();
        $related_products = Product::where('category_id',$product_details->first()->category_id)->where('id', '!=',$product_id)->get();
        $product_reviews = Order_product_details::where('product_id',$product_id)->whereNotNull('review')->get();
        $total_reviews = Order_product_details::where('product_id',$product_id)->whereNotNull('review')->count();
        $total_star = Order_product_details::where('product_id',$product_id)->whereNotNull('star')->sum('star');
        return view('frontend.product_details',[
            'product_details' => $product_details,
            'available_colors' => $available_colors,
            'related_products' => $related_products,
            'product_reviews' => $product_reviews,
            'total_reviews' => $total_reviews,
            'total_star' => $total_star,
        ]);
    }

    function get_size(Request $request){
        $sizes = Inventory::where('product_id',$request->product_id)->where('color_id',$request->color_id)->get();
        $str = '<option>Choose A Size</option>';
        foreach($sizes as $size){
            $str .= '<option value="'.$size->size_id.'">'.$size->rel_to_size->size_name.'</option>';
        }
        echo $str;
    }
}
