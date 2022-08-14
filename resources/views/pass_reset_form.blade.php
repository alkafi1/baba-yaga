@extends('frontend.master')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-lg-6 m-auto">
            <div class="card mt-5">
                <div class="card-header bg-primary">
                    <h3 class="text-white">Create New Password</h3>
                </div>
                <div class="card-body">
                    <form action="{{ route('pass_reset_update') }}" method="post">
                        @csrf
                        <div class="mt-3">
                            <label for="" class="form-label">New Password</label>
                            <input class="form-control" type="password" name="password" id="">
                        </div>
                        <div class="mt-3">
                            <label for="" class="form-label">Confirm Password</label>
                            <input class="form-control" type="password" name="con_password" id="">
                            @if(session('dont_match'))
                                <div class="alert alert-danger">{{ session('dont_match') }}</div>
                            @endif
                            <input type="hidden" name="token" value="{{ $token }}">
                        </div>
                        <div class="mt-3">
                            <button type="submit" class="btn btn-primary">Update Password</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection