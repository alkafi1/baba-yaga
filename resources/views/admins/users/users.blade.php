@extends('layouts.app')
@section('content')

    <div class="row">
        <div class="col-lg-12 m-auto">
            <div class="card">
                <div class="card-header  d-flex">
                    <h1>User List</h1>
                    <span class="float-left">Total User: {{ $total_count }}</span>
                </div>
                <div class="card-body">
                    <table class="table table-bordered">
                        <tr>
                            <th>S.l</th>
                            <th>Name</th>
                            <th>Email</th>
                            <th>Sign Up time</th>
                            <th>Action</th>
                        </tr>
                        @foreach ($all_user as $key=>$user )
                            
                        
                            <th>{{ $all_user->firstitem()+$key }}</th>
                            <th>{{ $user->name }}</th>
                            <th>{{ $user->email }}</th>
                            <th>{{ $user->created_at }}</th>
                            <th>
                                <a href="{{ route('user_delete', $user->id) }}"><button class="btn btn-danger">Delete</button></a>
                            </th>
                          
                        </tr>
                        @endforeach
                    </table>
                    {{ $all_user->links('pagination::bootstrap-4') }}
                </div>
            </div>
        </div>
    </div>
    

@endsection