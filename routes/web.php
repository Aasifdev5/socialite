<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\FacebookSocialiteController;

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


 
 
Route::get('facebook', [FacebookSocialiteController::class, 'redirectToFB']);
Route::get('callback/facebook', [FacebookSocialiteController::class, 'handleCallback']);

Route::middleware([
    'auth:sanctum',
    config('jetstream.auth_session'),
    'verified'
])->group(function () {
    Route::get('/dashboard', function () {
        return view('dashboard');
    })->name('dashboard');
});