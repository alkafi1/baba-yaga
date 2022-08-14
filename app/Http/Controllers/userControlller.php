<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;

class userControlller extends Controller
{
    function users()
    {
        $all_user = User::paginate(3);
        $total_count = User::count();
        return view('admins.users.users', compact('all_user', 'total_count'));
    }
    function user_delete($user_id)
    {
        User::find($user_id)->delete();
        return back();
    }
}
