@extends('layouts.app')

@section('content')
<div class="row">
    <div class="col-lg-10">
        <div class="card">
            <div class="card-header">
                <h3>Edit Sub Category</h3>
            </div>
            <div class="card-body">
                <form action="{{ route('subacategory_update') }}" method="post" enctype="multipart/form-data">
                        @csrf
                        <div class="mt-3">
                            <label for="category_id" class="form-label">Select Category </label>
                            <select name="category_id" id="" class="form-control form-control-lg default-select">
                                <option class="form-control" value="{{ $find_category_name->id}}">{{ $find_category_name->category_name }}</option>
                                @foreach ($categories as $key=>$category )   
                                <option value="{{ $category->id }}">{{ $category->category_name }}</option>
                                @endforeach
                            </select>
                            @error('category_id')
                                <div class="mt-2"><strong class="text-danger">{{ $message }}</strong></div>
                            @enderror
                        </div>
                        <div class="mt-3">
                            <label for="subcategory_name" class="form-label">Subcategory Name</label>
                            <input type="hidden" name="subcategory_id" class="form-control " value="{{ $subcategories->id}}">
                            <input type="text" name="subcategory_name" class="form-control " value="{{ $subcategories->subcategory_name }}">
                            @error('subcategory_name')
                                <div class="mt-2"><strong class="text-danger">{{ $message }}</strong></div>
                            @enderror
                            @if(session('error'))
                                <strong class="text-danger">{{ session('error') }}</strong>
                            @endif

                        </div>
                        
                        <div class="mt-3">
                            <label for="subcategory_image" class="form-label">Subcategory Image</label>
                            <img id="pic" width="100" class="float-right" src="{{ asset('/upload/subcategory/') }}/{{ $subcategories->subcategory_image }}">
                            <input class="form-control" type="file" name="subcategory_image" value="{{ $subcategories->subcategory_image }}" oninput="pic.src=window.URL.createObjectURL(this.files[0])">
                            @error('subcategory_image')
                                <div class="mt-2"><strong class="text-danger">{{ $message }}</strong></div>
                            @enderror
                        </div>
                        <div class="mt-3">
                            <button type="submit" class="btn btn-primary">Update Subcategory</button>
                        </div>
                    </form>
            </div>
        </div>
    </div>
</div>
@endsection