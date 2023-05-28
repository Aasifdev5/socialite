<?php

return [

    /*
    |--------------------------------------------------------------------------
    | Third Party Services
    |--------------------------------------------------------------------------
    |
    | This file is for storing the credentials for third party services such
    | as Mailgun, Postmark, AWS and more. This file provides the de facto
    | location for this type of information, allowing packages to have
    | a conventional file to locate the various service credentials.
    |
    */

    'mailgun' => [
        'domain' => env('MAILGUN_DOMAIN'),
        'secret' => env('MAILGUN_SECRET'),
        'endpoint' => env('MAILGUN_ENDPOINT', 'api.mailgun.net'),
        'scheme' => 'https',
    ],

    'postmark' => [
        'token' => env('POSTMARK_TOKEN'),
    ],

    'ses' => [
        'key' => env('AWS_ACCESS_KEY_ID'),
        'secret' => env('AWS_SECRET_ACCESS_KEY'),
        'region' => env('AWS_DEFAULT_REGION', 'us-east-1'),
    ],
    
    'facebook' => [
        'client_id' => '272370311899921',
        'client_secret' => 'fa6065d2ff4b00adf289cdab27d449b8',
        'redirect' => 'https://referalmarketing.natrajwebs.in/callback/facebook',
      ], 

    'linkedin' => [
        'client_id' => '86sy6t9nast5sk',
        'client_secret' => 'CDYYDmAxgjDxqevI',
        'redirect' => 'https://referalmarketing.natrajwebs.in/linkedin/callback'
    ],
    'twitter' => [
        'client_id' => 'AEku6TLcI25eopgmeVHZk42ga',
        'client_secret' => '5N9Qg7qLDPh4Qigrnu0GELG5YgiVdxQziRk57klbJaNQ9bGbTx',
        'redirect' => 'https://referalmarketing.natrajwebs.in/callback/twitter',
    ],
];
