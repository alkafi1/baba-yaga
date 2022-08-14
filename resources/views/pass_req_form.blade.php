@extends('frontend.master')

@section('content')
<div class="row">
    <div class="col-lg-6 m-auto">
        <div class="card mt-5">
            <div class="card-header bg-primary">
                <h3 class="text-white" >Password Reset Request Form</h3>

            </div>
            <div class="card-body">
                @if(session('success'))
                        <div class="alert alert-success">{{ session('success') }}</div>
                    @endif
                <form action="{{ route('customer.pass.req.store') }}" method="post">
                    @csrf
                    <div class="mb-3">
                        <label for="" class="form-label">Enter Your Email</label>
                        <input type="email" name="email"  class="form-control" >
                    </div>
                    <div class="mb-3">
                        <button class="btn btn-primary" type="submit">Send Reset Link</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
@endsection