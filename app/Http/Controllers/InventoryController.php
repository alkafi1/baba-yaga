<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Color;
use App\Models\Product;
use App\Models\Size;
use App\Models\Inventory;
use Carbon\Carbon;

class InventoryController extends Controller
{
    //
    function product_inventory($product_id){
        $product_infos = Product::find($product_id);
        $colors = Color::all();
        $sizes = Size::all();
        $inventories = Inventory::where('product_id',$product_id)->get();
        return view('admins.product.inventory',[
            'product_infos' => $product_infos,
            'colors' => $colors,
            'sizes' => $sizes,
            'inventories' => $inventories,
        ]);
        
    }

    function product_inventory_store(Request $request){
        if(Inventory::where('product_id',$request->product_id)->where('color_id',$request->color_id)->where('size_id',$request->size_id)->exists()){
            Inventory::where('product_id',$request->product_id)->where('color_id',$request->color_id)->where('size_id',$request->size_id)->increment('product_quantity',$request->product_quantity);
            return back()->with('success', 'Product Quantity Increment Successfully.');
        }
        else{
            Inventory::insert([
                'product_id' => $request->product_id,
                'color_id' => $request->color_id,
                'size_id' => $request->size_id,
                'product_quantity' => $request->product_quantity,
                'created_at' => Carbon::now(),
            ]);
            return back()->with('success', 'Add Product In Inventory Successfully.');
        }
        
    }

    //variation
    function add_color(){
        $colors = Color::all();
        $sizes = Size::all();
        return view('admins.product.add_variation',[
            'colors' => $colors,
            'sizes' => $sizes,
        ]);
    }
    function add_color_store(Request $request){
        Color::insert([
            'color_name' =>$request->color_name,
            'color_code' =>$request->color_code,
            'created_at' => Carbon::now(),
        ]);
        return back()->with('success', 'Add Color Successfully.');
    }

    function add_size_store(Request $request){
        Size::insert([
            'size_name' => $request->size_name,
            'created_at' => Carbon::now(),
        ]);
        return back()->with('success', 'Add Size Successfully.');
    }

    function color_delete($color_id){
        Color::find($color_id)->delete();
        return back()->with('success', 'Color Delete Successfully.');
        
    }
    function size_delete($size_id){
        Size::find($size_id)->delete();
        return back()->with('success', 'Size Delete Successfully.');
        
    }
}
