@extends('layouts.app')

@section('content')
@can('Category Edit')
<div class="container">
        <div class="row">
        <div class="col-lg-12 m-auto">
            <div class="card">
                <div class="card-header">
                    <h1>Edit Category</h1>
                </div>
                <div class="card-body">
                    <form action="{{ route('category_update') }}" method="post" enctype="multipart/form-data">
                        @csrf
                        <div class="mt-3">
                            <label class="form-label" for="category_name">Category Name</label>
                            <input class="form-control" type="hidden" name="category_id" value="{{ $category_info->id }}">
                            <input class="form-control" type="text" name="category_name" value="{{ $category_info->category_name }}">
                            @error('category_name')
                                <strong class="text-danger mt-2">{{ $message }}</strong>
                            @enderror
                        </div>
                        <div class="mt-3">
                            <img id="pic" width="100" class="float-right" src="{{ asset('/upload/category/'.$category_info->category_image) }}">
                            <input class="form-control" type="file"  name="category_image" oninput="pic.src=window.URL.createObjectURL(this.files[0])">
                            @error('category_image')
                                <strong class="text-danger mt-2">{{ $message }}</strong>
                            @enderror
                        </div>
                        <div class="mt-3">
                            <button type="submit" class="btn btn-info">Update Category</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        
    </div>
</div>
@else
You Need To Permission To Edit Catyegory
@endcan
@endsection