@extends('layouts.app')

@section('content')
<div class="row">
    <div class="col-lg-8">
        <div class="card-header">
            <h3>Coupon List</h3>
        </div>
        <div class="card-body">
            <table class="table table-bordered">
                <tr>
                    <th>Sl</th>
                    <th>Coupon Name</th>
                    <th>Coupon Type</th>
                    <th>Coupon Amount</th>
                    <th>Min Amount</th>
                    <th>Max Amount</th>
                    <th>Status</th>
                    <th>Validity</th>
                    <th>Action</th>
                </tr>
                @foreach ($coupons as $key=>$coupon )
                <tr>
                    <td>{{ $key+1 }}</td>
                    <td>{{ $coupon->coupon_name }}</td>
                    <td>{{ $coupon->type }}</td>
                    <td>{{ $coupon->amount }}</td>
                    <td>{{ $coupon->min }}</td>
                    <td>{{ $coupon->max }}</td>
                    <td>
                        <a href="{{ route('coupon.status',$coupon->id) }}" class="btn btn-{{ ($coupon->status == 0?'dark':'success') }}">{{ ($coupon->status == 0?'Deactive':'Active') }}</a>
                    </td>
                    <td>{{ $coupon->validity }}</td>
                    <td>
                        <a href="" class="btn btn-danger">Del</a>
                    </td>
                </tr>
                @endforeach
            </table>
        </div>
    </div>
    <div class="col-lg-4">
        <div class="card">
            <div class="card-header">
                <h3>Add Coupon</h3>
            </div>
            <div class="card-body">
                <form action="{{ route('coupon.store') }}" method="post">
                    @csrf
                    <div class="form-group">
                        <label for="" class="form-label">Coupon Name</label>
                        <input type="text" name="coupon_name" class="form-control">
                        @error('coupon_name')
                            <strong class="text-danger mt-2">{{ $message }}</strong>
                        @enderror
                    </div>
                    <div class="form-group">
                        <label for="" class="form-label">Coupon Type</label>
                        <select class="form-control" name="type" id="">
                            <option value="1"> Parcentage </option>
                            <option value="2"> Fixed Amount </option>
                        </select>
                        @error('type')
                            <strong class="text-danger mt-2">{{ $message }}</strong>
                        @enderror
                    </div>
                    <div class="form-group">
                        <label for="" class="form-label">Amount</label>
                        <input type="text" name="amount" class="form-control">
                        @error('amount')
                            <strong class="text-danger mt-2">{{ $message }}</strong>
                        @enderror
                    </div>
                    <div class="form-group">
                        <label for="" class="form-label">Minimum Amount</label>
                        <input type="text" name="min" class="form-control">
                        @error('min')
                            <strong class="text-danger mt-2">{{ $message }}</strong>
                        @enderror
                    </div>
                    <div class="form-group">
                        <label for="" class="form-label">Maximum Amount</label>
                        <input type="text" name="max" class="form-control">
                        @error('max')
                            <strong class="text-danger mt-2">{{ $message }}</strong>
                        @enderror
                    </div>
                    <div class="form-group">
                        <label for="" class="form-label">Validity</label>
                        <input type="date" name="validity" class="form-control">
                        @error('validity')
                            <strong class="text-danger mt-2">{{ $message }}</strong>
                        @enderror
                    </div>
                    <div class="form-group">
                        <button type="submit" class="btn btn-primary">Add Coupon</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
@endsection
