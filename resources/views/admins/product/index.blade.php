@extends('layouts.app')

@section('content')

    <div class="row">
        <div class="col-lg-12">
            <div class="card">
                    <div class="card-header  d-flex">
                        <h1>Product List</h1>
                    </div>
                    <div class="card-body">
                        <table class="table table-bordered">
                            <tr>
                                <th>S.l</th>
                                <th>Category Name</th>
                                <th>SubCategory Name</th>
                                <th>Product Name</th>
                                <th>Price</th>
                                <th>Discount</th>
                                <th>After Discount Price</th>
                                <th>Product Image</th>
                                <th>Action</th>
                            </tr>
                            <tr>
                            @foreach ($products as $key=>$product )
                                <td>{{ $key+1 }}</td>
                                <td>{{ $product->rel_to_category->category_name }}</td>
                                <td>{{ $product->rel_to_subcategory->subcategory_name }}</td>
                                <td>{{ $product->product_name }}</td>
                                <td>{{ $product->price }}</td>
                                <td>{{ $product->discount }}</td>
                                <td>{{ $product->after_discount }}</td>
                                <td>
                                    <img width="100" src="{{ asset('/upload/product/') }}/{{ $product->product_image }}" alt="" srcset="">
                                </td>
                                <td>
                                    <div class="d-flex">
                                        <a href="{{ route('product_inventory',$product->id) }}" class="btn btn-primary shadow btn-xs sharp mr-1"><i class="fa fa-circle"></i></a>
                                        <a href="#" class="btn btn-danger shadow btn-xs sharp"><i class="fa fa-trash"></i></a>
                                    </div>
                                </td>
                            
                            </tr>
                            @endforeach
                            
                        </table>
                        <button class="btn btn-danger" type="submit">Marked Delete</button>
                        </form>
                        <div class="mt-3">
                            {{ $products->links('pagination::bootstrap-4') }}
                        </div>
                        
                    </div>
                </div>
            </div>
        </div>
    </div>



@endsection