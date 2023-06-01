<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Auth;
use GuzzleHttp\Client;
use App\Models\User;
use Illuminate\Http\Request;
class InstagramController extends Controller
{
    public function instagram()
    {
        $appId = config('services.instagram.client_id');
        $redirectUri = urlencode(config('services.instagram.redirect'));
        return redirect()->to("https://api.instagram.com/oauth/authorize?app_id={$appId}&redirect_uri={$redirectUri}&scope=user_profile,user_media&response_type=code");
    }
       
    public function cbInstagram(Request $request)
    {
        $code = $request->code;
    if (empty($code)) return redirect()->route('home')->with('error', 'Failed to login with Instagram.');

    $appId = config('services.instagram.client_id');
    $secret = config('services.instagram.client_secret');
    $redirectUri = config('services.instagram.redirect');

    $client = new Client();

    // Get access token
    $response = $client->request('POST', 'https://api.instagram.com/oauth/access_token', [
        'form_params' => [
            'app_id' => $appId,
            'app_secret' => $secret,
            'grant_type' => 'authorization_code',
            'redirect_uri' => $redirectUri,
            'code' => $code
        ]
    ]);

    if ($response->getStatusCode() != 200) {
        return redirect()->route('home')->with('error', 'Unauthorized login to Instagram.');
    }

    $content = $response->getBody()->getContents();
    $content = json_decode($content);

    $accessToken = $content->access_token;
    $userId = $content->user_id;

    // Get user info
    $response = $client->request('GET', "https://graph.instagram.com/me?fields=id,username,account_type&access_token={$accessToken}");

    $content = $response->getBody()->getContents();
    $oAuth = json_decode($content);
    $username = $oAuth->username;
    
$userWhere = User::where('social_id', $oAuth->id)->first();
if($userWhere){
      
    Auth::login($userWhere);

    return redirect('/dashboard');

}else{
    $gitUser = User::create([
        'name' =>$username,
        'social_id'=> $oAuth->id,
        'social_type'=> 'instagram',
        'password' => encrypt('admin595959')
    ]);

    Auth::login($gitUser);

    return redirect('/dashboard');
}

    // Get instagram user name 
  

    }
}
