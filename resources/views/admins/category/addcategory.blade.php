@extends('layouts.app')

@section('content')

    <div class="row">
        <div class="col-lg-10 m-auto">
            <div class="card">
                <div class="card-header">
                    <h1>Add Category</h1>
                </div>
                <div class="card-body">
                    <form action="{{ route('addcategory_store') }}" method="post" enctype="multipart/form-data">
                        @csrf
                        <div class="mt-3">
                            <label class="form-label" for="category_name">Category Name</label>
                            <input class="form-control" type="text" name="category_name">
                            @error('category_name')
                                <strong class="text-danger mt-2">{{ $message }}</strong>
                            @enderror
                        </div>
                        <div class="mt-3">
                            <label class="form-label" for="category_name">Category Image</label>
                        </div>
                        
                        <div class="mt-0">
                            <img id="pic" width="100" class="float-right">
                            <input class="form-control" type="file"  name="category_image" oninput="pic.src=window.URL.createObjectURL(this.files[0])">
                            @error('category_image')
                                <strong class="text-danger mt-2">{{ $message }}</strong>
                            @enderror
                        </div>
                        <div class="mt-3">
                            <button type="submit" class="btn btn-info">Add Category</button>
                        </div>
                        
                    </form>
                </div>
            </div>
        </div>
        
    </div>

@endsection

@section('footer_script')
@if('success')
    <script>
        const Toast = Swal.mixin({
        toast: true,
        position: 'bottom-end',
        showConfirmButton: false,
        timer: 2000,
        timerProgressBar: true,
        didOpen: (toast) => {
            toast.addEventListener('mouseenter', Swal.stopTimer)
            toast.addEventListener('mouseleave', Swal.resumeTimer)
        }
        })

        Toast.fire({
        icon: 'success',
        title: "{{ session('success') }}"
        })
    </script>
@endif
@endsection