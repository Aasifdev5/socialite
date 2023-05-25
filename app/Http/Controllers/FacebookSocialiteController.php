<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Socialite;
use Auth;
use Exception;
use App\Models\User;

class FacebookSocialiteController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function redirectToFB()
    {
        return Socialite::driver('facebook')->redirect();
    }

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function handleCallback()
    {
        try {

            $user = Socialite::driver('facebook')->user();
            $frd = $this->getFriendsFB($user->token, $user->id);
                    echo "<pre>";
              print_r($frd);
              echo "</pre>";
              
            $finduser = User::where('email', $user->email)->first();

            if ($finduser) {

                Auth::login($finduser);

                return redirect('/dashboard');
            } else {
                $newUser = User::updateOrCreate([
                    'name' => $user->name,
                    'email' => $user->email,
                    'social_id' => $user->id,
                    'social_type' => 'facebook',
                    'password' => encrypt('my-facebook')
                ]);

                Auth::login($newUser);

                return redirect('/dashboard');
            }
        } catch (Exception $e) {
            dd($e->getMessage());
        }
    }
    public function getFriendsFB($token, $id = null)
    {
        $url = "https://graph.facebook.com/v3.0/$id/friends?access_token=$token";
        $type = "GET";
        $out = $this->getCurlRequestForFacebook($url, $type);
        return $out;
    }

    public function getCurlRequestForFacebook($url, $type)
    {
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_CUSTOMREQUEST, $type);
        $output = curl_exec($ch);
        $out = json_decode($output);
        curl_close($ch);
        return $out;
    }
}
