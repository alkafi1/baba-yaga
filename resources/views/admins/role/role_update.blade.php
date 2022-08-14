@extends('layouts.app')

@section('content')
<div class="row">
    <div class="col-lg-8 m-auto">
        <div class="card-body">
            <form action="{{ route('role.update.store') }}" method="post">
                @csrf
                <div class="mb-3">
                    <label for="" class="form-label">Role Name</label>
                    <input type="text" name="role_name" class="form-control" value="{{ $roles->name }}">
                    <input type="hidden" name="role_id" class="form-control" value="{{ $roles->id }}">
                </div>
                <div class="mb-3">
                    <label for="" class="form-label">Selecet Permission</label><br>
                    @foreach ($permissions as $permission )
                        <input value="{{ $permission->name}}" type="checkbox"  {{ ($roles->hasPermissionTo($permission->name)?'checked':'') }} name="permission_name[]"> {{ $permission->name}}<br>
                    @endforeach
                </div>
                <div class="mb-3">
                    <button type="submit" class="btn btn-primary">Update Permission</button>
                </div>
            </form>
        </div>
    </div>
</div>
@endsection