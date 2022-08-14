@extends('layouts.app')

@section('content')
<div class="row">
    <div class="col-lg-8">
        <div class="card">
            <div class="card-header">
                <h3>Role And Permission List</h3>
            </div>
            <div class="card-body">
                <table class="table table-bordered">
                    <tr>
                        <th>Sl</th>
                        <th>Role Name</th>
                        <th>Permisiion Name</th>
                        <th>Action</th>
                    </tr>
                    @foreach ($roles as $key=>$role )
                    <tr>
                        <td>{{ $key+1 }}</td>
                        <td>{{ $role->name }}</td>
                        <td>
                            @foreach ($role->getAllPermissions() as $key=>$permission )
                                <li>{{ $permission->name }}<br></li>
                            @endforeach
                        </td>
                        <td>
                            <a href="{{ route('role.update',$role->id) }}"><button class="btn btn-primary">Update</button></a>
                        </td>
                    </tr>
                    @endforeach
                </table>
            </div>
        </div>
    </div>
    <div class="col-lg-4">
        <div class="card">
            <div class="card-header">
                <h3>Add Permission</h3>
            </div>
            <div class="card-body">
                <form action="{{ route('permission.store') }}" method="post">
                    @csrf
                    <div class="mb-3">
                        <label for="" class="form-label">Permission Name</label>
                        <input type="text" name="permission_name" class="form-control">
                    </div>
                    <div class="mb-3">
                        <button type="submit" class="btn btn-primary">Add Permission</button>
                    </div>
                </form>
            </div>
        </div>
        <div class="card">
            <div class="card-header">
                <h3>Add Role</h3>
            </div>
            <div class="card-body">
                <form action="{{ route('role.store') }}" method="post">
                    @csrf
                    <div class="mb-3">
                        <label for="" class="form-label">Role Name</label>
                        <input type="text" name="role_name" class="form-control">
                    </div>
                    <div class="mb-3">
                        <label for="" class="form-label">Selecet Permission</label><br>
                        @foreach ($permissions as $permission )
                            <input type="checkbox" value="{{ $permission->id }}" name="permission_name[]">  {{ $permission->name}}<br>
                        @endforeach
                    </div>
                    <div class="mb-3">
                        <button type="submit" class="btn btn-primary">Add Permission</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
@endsection