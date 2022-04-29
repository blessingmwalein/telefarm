<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title inertia>{{ config('app.name', 'Laravel') }}</title>

    <!-- Fonts -->
    

    <link rel="stylesheet" href="/shop/css/libs.bundle.css" />

    <!-- Theme CSS -->
    <link rel="stylesheet" href="/shop/css/theme.bundle.css" id="stylesheetLight" />
    <link rel="stylesheet" href="/shop/css/theme-dark.bundle.css" id="stylesheetDark" />

    <!-- Scripts -->
    @routes
    <script src="{{ mix('js/app.js') }}" defer></script>
</head>

<body class="font-sans antialiased">
    @inertia

    @env ('local')
    <script src="http://localhost:3000/browser-sync/browser-sync-client.js"></script>
    @endenv

    <script src="/shop/js/vendor.bundle.js"></script>

    <!-- Theme JS -->
    <script src="/shop/js/theme.bundle.js"></script>
</body>

</html>