<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Category;
use Illuminate\Support\Facades\Auth;
use Carbon\Carbon;
use Image;

class CategoryController extends Controller
{
    function category()
    {
        $all_category = Category::paginate(3);
        $trash_category = Category::onlyTrashed()->get();
        return view('admins.category.index',[
            'all_category'=>$all_category,
            'trash_category'=>$trash_category,
        ]);
    }

    function addcategory()
    {
        return view('admins.category.addcategory');
    }

    function addcategory_store(Request $request)
    {
        if($request->category_image){
            $request->validate([
            'category_name'=>'unique:categories|required',
            'category_image'=>'mimes:jpg,png',
            'category_image'=>'file|max:10240',
            ]);
            $category_id = Category::insertGetId([
                'category_name'=>$request->category_name,
                'category_image'=>$request->category_image,
                'added_by'=>Auth::id(),
                'created_at'=>Carbon::now(), 
            ]);
            $category_image = $request->category_image;
            $extension = $category_image->getClientOriginalExtension();
            $final_ctaegory_image = $category_id.'.'.$extension;
            Image::make($category_image)->resize(300,300)->save(public_path('/upload/category/'.$final_ctaegory_image));

            Category::find($category_id)->update([
                'category_image' => $final_ctaegory_image,
            ]);
        }
        else{
            $request->validate([
            'category_name'=>'unique:categories|required'
            ]);
            $category_id = Category::insertGetId([
                'category_name'=>$request->category_name,
                'added_by'=>Auth::id(),
                'created_at'=>Carbon::now(), 
            ]);
        }
        
    
       return back()->with('success','Category Added Succesfully');
    }

    function category_delete($category_id)
    {
       Category::find($category_id)->delete();
       return back()->with('success','Category Trashed Succesfully.');
    }

    function category_edit($category_id)
    {
        $category_info = Category::find($category_id);
        
        return view('admins.category.category_edit',[
            'category_info'=> $category_info,
        ]);
    }


    function category_update(Request $request)
    {
        if($request->category_image== ''){
            Category::find($request->category_id)->update([
            'category_name'=> $request->category_name,
            'added_by' => Auth::id(),
            'updated_at' => Carbon::now(),
            ]);
            return redirect('/category')->with('success', 'Category Update Successfully');
        }
        else{
            $image = Category::find($request->category_id);
            $image_db = $image->category_image;
            if($image_db=='default.png'){
                $category_image = $request->category_image;
                $extension = $category_image->getClientOriginalExtension();
                $final_ctaegory_image = $request->category_id.'.'.$extension;
                Image::make($category_image)->resize(300,300)->save(public_path('/upload/category/'.$final_ctaegory_image));

                Category::find($category_id)->update([
                    'category_image' => $final_ctaegory_image,
                ]);
                return redirect('/category')->with('success', 'Category Update Successfully');
            }
            else{
                $delete_from = public_path('/upload/category/'.$image_db);
                unlink($delete_from);
                $category_image = $request->category_image;
                $extension = $category_image->getClientOriginalExtension();
                $final_ctaegory_image = $request->category_id.'.'.$extension;
                Image::make($category_image)->resize(300,300)->save(public_path('/upload/category/'.$final_ctaegory_image));

                Category::find($request->category_id)->update([
                    'category_image' => $final_ctaegory_image,
                ]);
                return redirect('/category')->with('success', 'Category Update Successfully');
            }
            
            
        }
        
    }


    function category_per_delete($category_id){
        $image = Category::onlyTrashed()->find($category_id);
        if($image->category_image == 'default.png'){
            Category::onlyTrashed()->find($category_id)->forceDelete();
            return back()->with('success','Category Permanently Delete Succesfully.');
        }
        else{
            $delete_from = public_path('/upload/category/'.$image->category_image);
            unlink($delete_from);
            Category::onlyTrashed()->find($category_id)->forceDelete();
            return back()->with('success','Category Permanently Delete Succesfully.');
        }
        
        
    }
    function category_restore($category_id){
        Category::onlyTrashed()->find($category_id)->restore();
        return back()->with('success','Category Restore Succesfully.');

    }
    function category_mark_delete(Request $request){
        $request->validate([
            'mark'=>'required',
        ]);
        foreach($request->mark as $mark){
            Category::find($mark)->delete();
        } 
        return back()->with('success','Marked Category Trashed Succesfully.');

    }
    function trashed_category_delete(Request $request){
        $request->validate([
            'mark'=>'required',
        ]);
        foreach($request->mark as $mark){
            Category::onlyTrashed()->find($mark)->forceDelete();
        } 
        return back()->with('success','Marked Category Trashed Succesfully.');

    }
    
}
