<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;
use App\Models\User;

class RoleController extends Controller
{
    function add_role_permission(){
        $roles = Role::all();
        $permissions = Permission::all();
        return view('admins.role.add_role_permission',[
            'permissions' => $permissions,
            'roles' => $roles,
        ]);
    }
    function permission_store(Request $request){
        $permission = Permission::create(['name' => $request->permission_name]);
        return back()->with('success','Permisiion Add Successfully');
    }
    function role_store(Request $request){
        
        $role = Role::create(['name' => $request->role_name]);
        $role->givePermissionTo($request->permission_name);
        return back()->with('success','Permisiion Add Successfully');
    }


    function role_update($role_id)
    {
        $permissions = Permission::all();
        $roles = Role::find($role_id);
        return view('admins.role.role_update',[
            'permissions' => $permissions,
            'roles' => $roles,
        ]);
    }

    function role_update_store(Request $request)
    {
        $role =Role::find($request->role_id);
        $role->syncPermissions($request->permission_name);
        return back();
    }
    function assign_role_user(){
        $users = User::all();
        $roles = Role::all();
        return view('admins.role.assign_role_user',[
            'users' => $users,
            'roles' => $roles,
        ]);
    }
    function role_assign_user_store(Request $request)
    {
        $user = User::find($request->user_id);
        $user->assignRole($request->role_id);

        return back();
    }


}
