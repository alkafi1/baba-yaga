@extends('frontend.master')

@section('content')
<div class="container mt-5 mb-5">

<div class="row d-flex justify-content-center">
    <div class="col-md-8">
        <div class="card">
            <div class="card-header bg-info">
                <h3 >Order Confirmation</h3>
            </div>
            <div class="card-body">
                    <p>Thank You Sir\Mam, <strong>{{ session('success') }}</strong> for purching our Product.</p>
            </div>   
        </div>             
                     
    </div>          
</div>       
</div>
@endsection