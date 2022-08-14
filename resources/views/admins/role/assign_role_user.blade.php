@extends('layouts.app')

@section('content')
<div class="row">
    <div class="col-lg-8">
        <div class="card">
            <div class="card-header">
                <h3>Assign Role To User List</h3>
            </div>
            <div class="card-body">
                <table class="table table-bordered">
                    <tr>
                        <th>Sl</th>
                        <th>User Name</th>
                        <th>Role Name</th>
                        <th>Permission Name</th>
                        <th>Action</th>
                    </tr>
                    @foreach ($users as $key=>$user )
                    <tr>
                        <td>{{ $key+1 }}</td>
                        <td>{{ $user->name }}</td>
                        <td>
                            @foreach ($user->getRoleNames() as $role )
                                <li>{{ $role }}<br></li>
                            @endforeach
                        </td>
                        <td>
                            @foreach ($user->getAllPermissions() as $permission )
                                <li>{{ $permission->name }}<br></li>
                            @endforeach
                        </td>
                        <td>
                            <a href=""><button class="btn btn-primary">Update</button></a>
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
                <h3>Assign Role To User</h3>
            </div>
            <div class="card-body">
                <form action="{{ route('role.assign.user.store') }}" method="post">
                    @csrf
                    <div class="mb-3">
                        <label for="" class="form-label">User Name</label>
                        <select name="user_id" class="form-control">
                            <option value="">-- Select User --</option>
                        @foreach ($users as $user )
                            <option class="form-control" value="{{ $user->id }}">{{ $user->name }}</option>
                        @endforeach
                        </select>
                    </div>
                    <div class="mb-3">
                        <label for="" class="form-label">Selecet Role</label><br>
                        <select name="role_id" class="form-control">
                            <option value="">-- Select Role --</option>
                        @foreach ($roles as $role )
                            <option value="{{ $role->id }}">{{ $role->name }}</option>
                        @endforeach
                        </select>
                    </div>
                    <div class="mb-3">
                        <button type="submit" class="btn btn-primary">Assign To User</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
@endsection