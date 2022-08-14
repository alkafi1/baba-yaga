<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Laravel\Socialite\Facades\Socialite;
use Carbon\Carbon;
use App\Models\CustomerLogin;
use Auth;

class SocialsiteController extends Controller
{
    function github_redirect()
    {
        return Socialite::driver('github')->redirect();
    }
    function github_callback()
    {
        $user = Socialite::driver('github')->user();

        if(CustomerLogin::where('email', $user->getEmail())->exists()){
            if(Auth::guard('customerlogin')->attempt(['email'=>$user->getEmail(),'password'=>'abc@123'])){
                return redirect('/');
            }
        }
        else{
            CustomerLogin::create([
                'name' => $user->getName(),
                'email' => $user->getEmail(),
                'password' => bcrypt('abc@123'),
                'created_at' => Carbon::now(),
            ]);
            
            if(Auth::guard('customerlogin')->attempt(['email'=>$user->getEmail(),'password'=>'abc@123'])){
                return redirect('/');
            }
        }
        
    }

    function google_redirect()
    {
        return Socialite::driver('google')->redirect();
    }
    function google_callback()
    {
        $user = Socialite::driver('google')->user();

        if(CustomerLogin::where('email', $user->getEmail())->exists()){
            if(Auth::guard('customerlogin')->attempt(['email'=>$user->getEmail(),'password'=>'abc@123'])){
                return redirect('/');
            }
        }
        else{
            CustomerLogin::create([
                'name' => $user->getName(),
                'email' => $user->getEmail(),
                'password' => bcrypt('abc@123'),
                'created_at' => Carbon::now(),
            ]);
            
            if(Auth::guard('customerlogin')->attempt(['email'=>$user->getEmail(),'password'=>'abc@123'])){
                return redirect('/');
            }
        }
        
    }
}
