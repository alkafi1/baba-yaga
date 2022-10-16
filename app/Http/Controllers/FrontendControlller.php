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

    function shop(Request $request)
    {
        $data = $request->all();
        $products = Product::where( function($q) use ($data){
            if(!empty($data['q']) && $data['q'] != '' && $data['q'] != 'undefined'){
                $q->where(function($q) use ($data){
                    $q->where('product_name', 'like','%'.$data['q'].'%');
                    $q->orWhere('short_desp', 'like','%'.$data['q'].'%');
                    $q->orWhere('long_desp', 'like','%'.$data['q'].'%');
                });
            }
            if(!empty($data['category_id']) && $data['category_id'] != '' && $data['category_id'] != 'undefined'){
                $q->where(function($q) use ($data){
                    $q->where('category_id', $data['category_id']);
                });
            }
            if(!empty($data['amount']) && $data['amount'] != '' && $data['amount'] != 'amount'){
                $q->where(function($q) use ($data){
                    $after_explode = explode('-', $data['amount']);
                    
                    $q->whereBetween('after_discount', [$after_explode[0],$after_explode[1]]);
                });
            }
            if(!empty($data['color_id']) && $data['color_id'] != '' && $data['color_id'] != 'undefined' || !empty($data['size_id']) && $data['size_id'] != '' && $data['size_id'] != 'undefined'){
                $q->whereHas('rel_to_inventory', function ($q) use ($data){
                    if(!empty($data['color_id']) && $data['color_id'] != '' && $data['color_id'] != 'undefined'){
                        $q->whereHas('rel_to_color', function($q) use ($data){
                            $q->where('color_id', $data['color_id']);
                        });
                    }
                    if(!empty($data['size_id']) && $data['size_id'] != '' && $data['size_id'] != 'undefined'){
                        $q->whereHas('rel_to_size', function($q) use ($data){
                            $q->where('size_id', $data['size_id']);
                        });
                    }
                });
                
            }
        })->get();
        
        
        $categories = Category::all();
        $colors = Color::all();
        $sizes = Size::all();
        return view('frontend.shop',[
            'products' => $products,
            'categories' => $categories,
            'colors' => $colors,
            'sizes' => $sizes,
        ]);
    }
}
