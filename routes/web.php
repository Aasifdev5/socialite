<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\FacebookSocialiteController;
use App\Http\Controllers\LinkedinController;
use App\Http\Controllers\TwitterController;
use App\Http\Controllers\InstagramController;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('auth.login');
});

Route::middleware([
    'auth:sanctum',
    config('jetstream.auth_session'),
    'verified'
])->group(function () {
    Route::get('/dashboard', function () {
        return view('dashboard');
    })->name('dashboard');
});
Route::get('facebook', [FacebookSocialiteController::class, 'redirectToFB']);
Route::get('callback/facebook', [FacebookSocialiteController::class, 'handleCallback']);
Route::get('linkedin', [LinkedinController::class, 'linkedinRedirect']);
Route::get('linkedin/callback', [LinkedinController::class, 'linkedinCallback']);
Route::get('twitter', [TwitterController::class, 'loginwithTwitter']);
Route::get('callback/twitter', [TwitterController::class, 'cbTwitter']);
Route::get('instagram', [InstagramController::class, 'instagram']);
Route::get('callback/instagram', [InstagramController::class, 'cbInstagram']);