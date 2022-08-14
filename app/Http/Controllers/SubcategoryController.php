<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Category;
use App\Models\subcategory;
use Image;
use Illuminate\Support\Facades\Auth;
use Carbon\Carbon;

class SubcategoryController extends Controller
{
    function addsubcategory(){
        $categories = Category::all();
        return view('admins.subcategory.addsubcategory',[
            'categories' => $categories,
        ]);
    }
    function subcategory_store(Request $request){
        if(subcategory::where('category_id',$request->category_id)->where('subcategory_name',$request->subcategory_name)->exists()){
            return back()->with('exist','Subcategory Name already Exist In this Cayegory');
        }
        else{
            if($request->subcategory_image){
            $request->validate([
            'category_id'=> 'required',
            'subcategory_name'=> 'required|unique:subcategories',
            'subcategory_image'=> 'mimes:png,jpg,jpeg',
            'subcategory_image'=>'file|max:10240',
            ],[
                'category_id.required'=> 'Please Selcet Category',
            ]);
            $subcategory_id = subcategory::insertGetId([
                'category_id'=>$request->category_id,
                'added_by'=>Auth::id(),
                'subcategory_name'=>$request->subcategory_name,
                'created_at'=>Carbon::now(),
            ]);
            $subcategory_image = $request->subcategory_image;
            $extension = $subcategory_image->getClientOriginalExtension();
            $f_subcategory_image = $subcategory_id.'.'.$extension;
            Image::make($subcategory_image)->save(public_path('/upload/subcategory/'.$f_subcategory_image));
            Subcategory::find($subcategory_id)->update([
                'subcategory_image'=>$f_subcategory_image,
            ]);
            return back()->with('success', 'Subcategory Added Successfully.');
            
            }
            else{
                $request->validate([
                'category_id'=> 'required',
                'subcategory_name'=> 'required|unique:subcategories',
                ],[
                    'category_id.required'=> 'Please Selcet Category',
                ]);
                subcategory::insert([
                    'category_id'=>$request->category_id,
                    'added_by'=>Auth::id(),
                    'subcategory_name'=>$request->subcategory_name,
                    'created_at'=>Carbon::now(),
                ]);
                return back()->with('success', 'Subcategory Added Successfully.');
            }
        }

    }
    function subcategory(){
        $subcategories = Subcategory::simplePaginate(5);
        $trashed_subcategories = Subcategory::onlyTrashed()->get();
        return view('admins.subcategory.index', [
            'subcategories' => $subcategories,
            'trashed_subcategories' => $trashed_subcategories,
        ]);
    }
    
    function subacategory_delete($subcategory_id){
            subcategory::find($subcategory_id)->delete();
            return back()->with('success', 'Sub Category Trashed Successfully.');
    }

    function subacategory_restore($subcategory_id){
        subcategory::onlyTrashed()->find($subcategory_id)->restore();
        return back()->with('success', 'Sub Category Restore Successfully.');
    }

    function subacategory_edit($subcategory_id){
        $subcategories = subcategory::find($subcategory_id);
        $find_category_id = $subcategories->category_id;
        $find_category_name = Category::find($find_category_id);
        $categories = Category::all();
        return view('admins.subcategory.subcategoryedit',[
            'categories' => $categories,
            'subcategories' => $subcategories,
            'find_category_name' => $find_category_name,
        ]);
    }

    function subacategory_update(Request $request){
        
        if($request->subcategory_image==''){
            if($request->subcategory_name == ''){
                return back()->with('error','Please Enter Subcategory Name.');
            }
            else{
                Subcategory::find($request->subcategory_id)->update([
                    'category_id'=>$request->category_id,
                    'added_by'=>Auth::id(),
                    'subcategory_name'=>$request->subcategory_name,
                    'created_at'=>Carbon::now(),
                ]);
                return redirect('/subcategory')->with('success', 'SubCategory Update Successfully.');
            }
        }
        else{
            $old_image = subcategory::find($request->subcategory_id);
            $old_image_name = $old_image->subcategory_image;

            if($old_image_name == 'default.png'){
                $image = $request->subcategory_image;
                $extension = $image->getClientOriginalExtension();
                $image_name = $request->subcategory_id.'.'.$extension;
                Image::make($image)->save(public_path('/upload/subcategory/'.$image_name));
                Subcategory::find($request->subcategory_id)->update([
                    'category_id'=>$request->category_id,
                    'added_by'=>Auth::id(),
                    'subcategory_name'=>$request->subcategory_name,
                    'subcategory_image'=>$image_name,
                    'created_at'=>Carbon::now(),
                ]);
                return redirect('/subcategory')->with('success', 'SubCategory Update Successfully.');
            }
            else{
                $old_image_delete = public_path('/upload/subcategory/'.$old_image_name);
                unlink($old_image_delete);
                
                $image = $request->subcategory_image;
                $extension = $image->getClientOriginalExtension();
                $image_name = $request->subcategory_id.'.'.$extension;
                Image::make($image)->save(public_path('/upload/subcategory/'.$image_name));
                Subcategory::find($request->subcategory_id)->update([
                    'category_id'=>$request->category_id,
                    'added_by'=>Auth::id(),
                    'subcategory_name'=>$request->subcategory_name,
                    'subcategory_image'=>$image_name,
                    'created_at'=>Carbon::now(),
                ]);
                return redirect('/subcategory')->with('success', 'SubCategory Update Successfully.');
            }
            

            
            
            
        }
    }
}
