@extends('layouts.app')
@section('content')
    <div class="row">
        <div class="col-lg-12 m-auto">
            <div class="card">
                <div class="card-header  d-flex">
                    <h1>Category List</h1>
                </div>
                <div class="card-body">
                    <table class="table table-bordered">
                        <tr>
                            <th>
                                <form action="{{ route('category_mark_delete') }}" method="post">
                                    @csrf
                                <input type="checkbox" id="checkAll"> Mark All
                            </th>
                            <th>S.l</th>
                            <th>Category Name</th>
                            <th>Added By</th>
                            <th>Category Image</th>
                            <th>Created At</th>
                            <th>Action</th>
                        </tr>
                        <tr>
                        @foreach ($all_category as $key=>$category )
                            <th>
                                <input type="checkbox" name="mark[]" id="" value="{{ $category->id }}">
                            </th>
                            <th>{{ $all_category->firstitem()+$key }}</th>
                            <th>{{ $category->category_name }}</th>
                            <th>{{ $category->rel_to_user->name }}</th>
                            <th>
                                <img width="50" src="{{ asset('/upload/category/') }}/{{ $category->category_image }}" alt="">
                            </th>
                            <th>{{ $category->created_at->diffForHumans() }}</th>
                            <th>
                                <a href="{{ route('category_edit', $category->id) }}" class="btn btn-info">Edit</a>
                                <a href="{{ route('category_delete', $category->id) }}"class="btn btn-danger">Delete</a>
                            </th>
                          
                        </tr>
                        @endforeach
                        
                    </table>
                    <button class="btn btn-danger" type="submit">Marked Delete</button>
                    </form>
                    <div class="mt-3">
                        {{ $all_category->links('pagination::bootstrap-4') }}
                    </div>
                    
                </div>
            </div>
            <div class="card mt-3">
                <div class="card-header  d-flex">
                    <h1>Trash Category List</h1>
                </div>
                <div class="card-body">
                    <table class="table table-bordered">
                        <tr>
                            <th>
                                <form action="{{ route('trashed_category_delete') }}" method="post">
                                    @csrf
                                    <input type="checkbox"  id="checkAll2" > Mark All
                                
                            </th>
                            <th>S.l</th>
                            <th>Category Name</th>
                            <th>Added By</th>
                            <th>Category Image</th>
                            <th>Created At</th>
                            <th>Action</th>
                        </tr>
                        @foreach ($trash_category as $key=>$category )
                            <th>
                                <input type="checkbox" name="mark[]" value="{{ $category->id }}">
                            </th>
                            <th>{{ $key+1 }}</th>
                            <th>{{ $category->category_name }}</th>
                            <th>{{ $category->rel_to_user->name }}</th>
                            <th>
                                <img width="50" src="{{ asset('/upload/category/') }}/{{ $category->category_image }}" alt="">
                            </th>
                            <th>{{ $category->created_at->diffForHumans() }}</th>
                            <th>
                                <a href="{{ route('category_restore', $category->id) }}" class="btn btn-info">Restore</a>
                                <a href="{{ route('category_per_delete', $category->id ) }}" class="btn btn-danger">Delete</a>
                            </th>
                        </tr>
                        @endforeach
                    </table>
                    <button class="btn btn-danger" type="submit">Delete Marked</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
    

@endsection
@section('footer_script')
@if('success')
    <script>
        const Toast = Swal.mixin({
        toast: true,
        position: 'bottom-end',
        showConfirmButton: false,
        timer: 2000,
        timerProgressBar: true,
        didOpen: (toast) => {
            toast.addEventListener('mouseenter', Swal.stopTimer)
            toast.addEventListener('mouseleave', Swal.resumeTimer)
        }
        })

        Toast.fire({
        icon: 'success',
        title: "{{ session('success') }}"
        })
    </script>
    @endif

    <script>
    $('#checkAll').click(function () {
        $('input:checkbox').not(this).prop('checked', this.checked);
    })
    $('#checkAll2').click(function () {
        $('input:checkbox').not(this).prop('checked', this.checked);
    })
</script>
    
@endsection
