<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Category;
use App\Models\subcategory;
use App\Models\Product;
use App\Models\Thumbnils;
use App\Models\Color;
use Str;
use Image;
use Carbon\Carbon;

class ProductController extends Controller
{
    function addproduct(){
        $categories = Category::all();
        $subcategories = subcategory::all();
        return view('admins.product.addproduct',[
            'categories' => $categories,
            'subcategories' => $subcategories,
        ]);
    }

    function getsubategory(Request $request){
        $subcategories = subcategory::where('category_id',$request->category_id)->get();
        $str = '<option  class="form-control" value="" >-- Select Sub Category --</option>';
        foreach($subcategories as $subcategory){
            $str .= '<option class="form-control" value="'.$subcategory->id.'">'.$subcategory->subcategory_name.'</option>';
        }
        echo $str;
    }

    function product_store(Request $request){
        if(Product::where('category_id',$request->category_id)->where('subcategory_id',$request->subcategory_id)->where('product_name',$request->product_name)->exists()){
            return back()->with('error', 'Product Name Already exists.');
        }
        else{
                $product_id = Product::insertGetId([
                'category_id' => $request->category_id,
                'subcategory_id' => $request->subcategory_id,
                'product_name' => $request->product_name,
                'price' => $request->price,
                'discount' => $request->discount,
                'after_discount' => ($request->price - ($request->price * $request->discount/100)),
                'short_desp' => $request->short_desp,
                'long_desp' => $request->long_desp,
                'sku' => substr($request->product_name,0,4).'-'. Str::random(5).rand(0,1000),
                'slug' => str_replace(' ', '-', Str::lower($request->product_name)).'-'.rand(0,100000),

            ]);

            $image = $request->product_image;
            $extension = $image->getClientOriginalExtension();
            $image_name = $product_id.'.'.$extension;
            Image::make($image)->resize(680, 680)->save(public_path('/upload/product/'.$image_name));

            Product::find($product_id)->update([
                'product_image' => $image_name,
            ]);
            
            $sl = 1;
            $product_thumbnils_imgs = $request->product_thumbnils_img;

            foreach($product_thumbnils_imgs as $key=>$product_thumbnils_img){
                $extension = $product_thumbnils_img->getClientOriginalExtension();
                $thumbnils_img = $product_id. '-' .$sl. '.' .$extension;
                Image::make($product_thumbnils_img)->resize(680, 680)->save(public_path('/upload/product/thumbnils/'.$thumbnils_img));

                Thumbnils::insert([
                    'product_id' => $product_id,
                    'thumbnil_name' => $thumbnils_img,
                    'created_at' => Carbon::now(),
                ]);
                $sl++;
            }
            return back()->with('success', 'Product Store Succesfully.');
        }
        

    }

    function product(){
        $products = Product::paginate(10);
        return view('admins.product.index',[
            'products' => $products,
        ]);
    }
    
}
