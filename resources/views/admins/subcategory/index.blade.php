@extends('layouts.app')

@section('content')

    <div class="row">
        <div class="col-lg-12 m-auto">
            <div class="card">
                <div class="card-header">
                    <h3>Sub Category List</h3>
                </div>
                <div class="card-body">
                    <table class="table table-bordered">
                        <tr>
                            <th>Sl</th>
                            <th>Added By</th>
                            <th>Category</th>
                            <th>Subcategory</th>
                            <th>Subcategory Image</th>
                            <th>Action</th>
                        </tr>
                        @foreach($subcategories as $key => $subcategory)
                            
                        <tr>
                            <td>{{ $subcategories->firstitem()+$key }}</td>
                            <td>{{ $subcategory->rel_to_user->name }}</td>
                            <td>{{ $subcategory->rel_to_category->category_name }}</td>
                            <td>{{ $subcategory->subcategory_name }}</td>
                            <td>
                                <img width="100" src="{{ asset('/upload/subcategory/') }}/{{ $subcategory->subcategory_image }}" alt="" srcset="">
                            </td>
                            <td>
                                <a href="{{ route('subacategory_edit',$subcategory->id) }}" class="btn btn-info">Edit</a>
                                <a href="{{ route('subacategory_delete',$subcategory->id) }}" class="btn btn-danger">Delete</a>
                            </td>
                        </tr>
                        @endforeach
                    </table>
                    {{ $subcategories->links() }}
                </div>
            </div>
        </div>

        <div class="col-lg-12 m-auto">
            <div class="card">
                <div class="card-header">
                    <h3>Trashed Sub Category List</h3>
                </div>
                <div class="card-body">
                    <table class="table table-bordered">
                        <tr>
                            <th>Sl</th>
                            <th>Added By</th>
                            <th>Category</th>
                            <th>Subcategory</th>
                            <th>Subcategory Image</th>
                            <th>Action</th>
                        </tr>
                        @foreach($trashed_subcategories as $key => $subcategory)
                            
                        <tr>
                            <td>{{ $key+1 }}</td>
                            <td>{{ $subcategory->rel_to_user->name }}</td>
                            <td>{{ $subcategory->rel_to_category->category_name }}</td>
                            <td>{{ $subcategory->subcategory_name }}</td>
                            <td>
                                <img width="100" src="{{ asset('/upload/subcategory/') }}/{{ $subcategory->subcategory_image }}" alt="" srcset="">
                            </td>
                            <td>
                                <a href="{{ route('subacategory_restore',$subcategory->id) }}" class="btn btn-info">Restore</a>
                                <a href="{{ route('subacategory_delete',$subcategory->id) }}" class="btn btn-danger">Delete</a>
                            </td>
                        </tr>
                        @endforeach
                        

                    </table>
                </div>
            </div>
        </div>
    </div>

@endsection