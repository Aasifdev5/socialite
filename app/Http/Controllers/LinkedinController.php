<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Exception;
use Laravel\Socialite\Facades\Socialite;
use App\Models\User;

class LinkedinController extends Controller
{
    public function linkedinRedirect()
    {
        return Socialite::driver('linkedin')->redirect();
    }

    public function linkedinCallback()
    {
        try {

            $user = Socialite::driver('linkedin')->user();

            // echo "<pre>";
            // print_r( $user);
            // echo "</pre>";
           
            // exit;
            $linkedinUser = User::where('email', $user->email)->first();
            
            if ($linkedinUser) {

                Auth::login($linkedinUser);

                return redirect('/dashboard');
            } else {
                $user = User::create([
                    'name' => $user->name,
                    'profile_photo' => $user->avatar_original,
                    'email' => $user->email,
                    'social_id' => $user->id,
                    'social_type' => 'linkedin',
                    'password' => encrypt('admin12345')
                ]);

                Auth::login($user);

                return redirect('/dashboard');
            }
        } catch (Exception $e) {
            dd($e->getMessage());
        }
    }
}
