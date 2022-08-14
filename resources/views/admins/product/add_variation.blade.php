@extends('layouts.app')

@section('content')

    <div class="row">
        <div class="col-lg-8">
            <div class="card h-auto">
                <div class="card-header">
                    <h3>Color List</h3>
                </div>
                <div class="card-body">
                    <table class="table table-bordered">
                        <tr>
                            <th>Sl</th>
                            <th>Color Name</th>
                            <th>Color</th>
                            <th>Action</th>
                        </tr>
                        @foreach ($colors as $key=>$color )  
                        <tr>
                            <td>{{ $key+1 }}</td>
                            <td>{{ $color->color_name }}</td>
                            <td>
                                <button class="btn ">
                                    <span class="badges" style="background: {{ $color->color_code }}; color:transparent">
                                        {{ $color->color_name }}
                                    </span>
                                </button>
                            </td>
                            <td>
                                <a href="{{ route('color_delete',$color->id) }}" class="btn btn-danger shadow btn-xs sharp"><i class="fa fa-trash"></i></a>
                            </td>
                        </tr>
                        @endforeach
                    </table>
                </div>
            </div>
            <div class="card">
                <div class="card-header">
                    <h3>Size List</h3>
                </div>
                <div class="card-body">
                    <table class="table table-bordered">
                        <tr>
                            <th>Sl</th>
                            <th>Size Name</th>
                            <th>Action</th>
                        </tr>
                        @foreach ($sizes as $key=>$size )  
                        <tr>
                            <td>{{ $key+1 }}</td>
                            <td>{{ $size->size_name }}</td>
                            <td>
                                <a href="{{ route('size_delete',$size->id) }}" class="btn btn-danger shadow btn-xs sharp"><i class="fa fa-trash"></i></a>
                            </td>
                        </tr>
                        @endforeach
                    </table>
                </div>
            </div>
        </div>
        <div class="col-lg-4 ">
            <div class="card h-auto">
                <div class="card-header">
                    <h3>Add Color</h3>
                </div>
                <div class="card-body">
                    <form action="{{ route('add_color_store') }}" method="post">
                        @csrf
                        <div class="form-group">
                            <label for="" class="form-label">Color Name</label>
                            <input type="text" name="color_name" class="form-control">
                        </div>
                        <div class="form-group">
                            <label for="" class="form-label">Color Code</label>
                            <input type="text" name="color_code" class="form-control">
                        </div>
                        <div class="form-group">
                            <button type="submit" class="btn btn-primary">Add Color</button>
                        </div>
                    </form>
                </div>
            </div>
            <div class="card h-auto">
                <div class="card-header">
                    <h3>Add Size</h3>
                </div>
                <div class="card-body">
                    <form action="{{ route('add_size_store') }}" method="post">
                        @csrf
                        <div class="form-group">
                            <label for="" class="form-label">Size Name</label>
                            <input type="text" name="size_name" class="form-control">
                        </div>
                        <div class="form-group">
                            <button type="submit" class="btn btn-primary">Add Size</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

@endsection