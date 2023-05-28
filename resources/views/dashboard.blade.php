<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Dashboard') }}
        </h2>
    </x-slot>
    <!DOCTYPE html>
    <html lang="en">

    <head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    </head>

    <body>
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-body">
                            <!-- form start -->
                            
                                    <table class="table table-striped">
                                        <thead>
                                            <tr>
                                                <th>{{ Auth::user()->social_type }}</th>
                                                <th>Name</th>
                                                <th>Email</th>
                                                <th>Password</th>

                                            </tr>
                                        </thead>
                                        <tbody>

                                            <tr>
                                                <td>{{ Auth::user()->social_id }}</td>
                                                <td>{{ Auth::user()->name }}</td>
                                                <td>{{ Auth::user()->email }}</td>
                                                <td>{{ Auth::user()->password }}</td>

                                            </tr>
                                        </tbody>

                                    </table>


                                
                        </div>
                    </div>
                </div>
    </body>

    </html>
    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-xl sm:rounded-lg">
                <x-welcome />
            </div>
        </div>
    </div>
</x-app-layout>