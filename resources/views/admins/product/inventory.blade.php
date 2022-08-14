@extends('layouts.app')

@section('content')

<div class="row">
    <div class="col-lg-8">
        <div class="card h-auto">
                <div class="card-header">
                    <h3>Inventory List of {{ $product_infos->product_name }}</h3>
                </div>
                <div class="card-body">
                    <table class="table table-bordered">
                        <tr>
                            <th>Sl</th>
                            {{--  <th>Product Name</th>  --}}
                            <th>Color</th>
                            <th>Size</th>
                            <th> Quantity</th>
                            <th>Action</th>
                        </tr>
                        @foreach ($inventories as $key=>$inventory )  
                        <tr>
                            <td>{{ $key+1 }}</td>
                            {{--  <td>{{ $inventory->rel_to_product->product_name }}</td>  --}}
                            <td>{{ $inventory->rel_to_color->color_name }}</td>
                            <td>{{ $inventory->rel_to_size->size_name }}</td>
                            <td>{{ $inventory->product_quantity }}</td>
                            <td>
                                <a href="" class="btn btn-danger shadow btn-xs sharp"><i class="fa fa-trash"></i></a>
                            </td>
                        </tr>
                        @endforeach
                    </table>
                </div>
            </div>
        </div>
    <div class="col-lg-4">
        <div class="card h-auto">
            <div class="card-header">
                <h3>Add Inventory</h3>
            </div>
            <div class="card-body">
                <form action="{{ route('product_inventory_store') }}" method="POST">
                    @csrf
                    <div class="form-group">
                        <label for="" class="form-label">Product Name</label>
                        <input type="hidden" name="product_id" class="form-control" value="{{ $product_infos->id }}">
                        <input type="text" name="" class="form-control" readonly value="{{ $product_infos->product_name }}">
                    </div>
                    <div class="form-group">
                        <select class="form-control default-select" name="color_id" id="">
                            <option class="form-control" value="">-- Select Color --</option>
                            @foreach ($colors as $color)
                                <option value="{{ $color->id }}">{{ $color->color_name }}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="form-group">
                        <select class="form-control default-select" name="size_id" id="">
                            <option class="form-control" value="">-- Select Size --</option>
                            @foreach ($sizes as $size)
                                <option value="{{ $size->id }}">{{ $size->size_name }}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="" class="form-label">Product Quantity</label>
                        <input type="number" name="product_quantity" class="form-control">
                    </div>
                    <div class="form-group">
                        <button class="btn btn-primary" type="submit">Add Inventory</button>
                    </div>
                </form>
            </div>
    </div>
</div>

@endsection