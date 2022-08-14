@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-lg-10 m-auto">
            <div class="card ">
                <div class="card-header">
                    <h3>Add Subcategory</h3>
                </div>
                <div class="card-body">
                    <form action="{{ route('subcategory_store') }}" method="post" enctype="multipart/form-data">
                        @csrf
                        <div class="mt-3">
                            <select name="category_id" id="" class="form-control text-center">
                                <option value="">--Select Category --</option>
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
                            <input type="text" name="subcategory_name" class="form-control " id="">
                            @error('subcategory_name')
                                <div class="mt-2"><strong class="text-danger">{{ $message }}</strong></div>
                            @enderror
                            @if(session('exist'))
                                <strong class="text-danger">{{ session('exist') }}</strong>
                            @endif

                        </div>
                        
                        <div class="mt-3">
                            <img id="pic" width="100" class="float-right">
                            <input class="form-control" type="file" name="subcategory_image" oninput="pic.src=window.URL.createObjectURL(this.files[0])">
                            @error('subcategory_image')
                                <div class="mt-2"><strong class="text-danger">{{ $message }}</strong></div>
                            @enderror
                        </div>
                        <div class="mt-3">
                            <button type="submit" class="btn btn-info">Add Subcategory</button>
                        </div>
                    </form>
                </div>
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