@extends('layouts.app');

@section('content')

    <div class="row">
        <div class="col">
            <div class="card">
                <div class="card-header">
                    <h3>Add Product</h3>
                </div>
                <div class="card-body">
                    <form action="{{ route('product_store') }}" method="POST" enctype="multipart/form-data">
                        @csrf
                        <div class="row">
                            <div class="col-lg-6">  
                                <div class="form-group">
                                    <select class="form-control form-control-lg default-select" name="category_id" id="category_id">
                                        <option class="form-control" value="">-- Select Category --</option>
                                        @foreach ($categories as $category )
                                        <option value="{{ $category->id }}">{{ $category->category_name }}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                    
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <select class="form-control"  name="subcategory_id" id="subcategory_id">
                                        <option class="form-control" value="">-- Select Sub Category --</option>
                                        @foreach ($subcategories as $subcategory )
                                        <option value="{{ $subcategory->id }}" >{{ $subcategory->subcategory_name }}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <input type="text" name="product_name" placeholder="Product Name" class="form-control">
                                </div>
                                @if(session('error'))
                                    <div class="alert alert-danger">{{ session('error') }}</div>
                                @endif
                            </div>
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <input type="number" name="price" placeholder="Product Price" class="form-control">
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <input type="number" name="discount" placeholder="discount %" class="form-control">
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <input type="text" name="short_desp" placeholder="Short Description" class="form-control">
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <textarea id="summernote" name="long_desp" placeholder="Long Description" class="form-control"></textarea>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label for="product_image">Product Image</label>
                                    <input type="file" name="product_image" placeholder="Product Preview" class="form-control">
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label for="product_thumbnils_img">Product Thumbnils</label>
                                    <input type="file" id="" multiple name="product_thumbnils_img[]" placeholder="Product Thumbnils" class="form-control">
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="form-group mt-3">
                                    <button class="btn btn-primary" type="submit">Add Product</button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection

@section('footer_script')
<script>
    $('#category_id').change(function(){
        let category_id = $(this).val();
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });

        $.ajax({
            url:'/getsubategory',
            type:'POST',
            data:{'category_id':category_id},
            success:function(data){
                $('#subcategory_id').html(data);
                
            }
        });
    });
</script>
<script>
    $(document).ready(function() {
        $('#summernote').summernote();
        });
</script>
@endsection