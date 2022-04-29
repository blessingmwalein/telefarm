<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title inertia>{{ config('app.name', 'Laravel') }}</title>

    <!-- Fonts -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;700&display=swap">

    <!-- Styles -->
    <link rel="stylesheet" href="{{ mix('css/app.css') }}">



    <!-- Scripts -->
    @routes
    <script src="{{ mix('js/app.js') }}" defer></script>

    <link href="/user-assets/css/nucleo-icons.css" rel="stylesheet" />
    <link href="/user-assets/css/nucleo-svg.css" rel="stylesheet" />

    <script src="/user-assets/js/42d5adcbca.js" crossorigin="anonymous"></script>
    <link href="/user-assets/css/nucleo-svg.css" rel="stylesheet" />

    <link id="pagestyle" href="/user-assets/css/soft-ui-dashboard.min7016.css?v=1.0.8" rel="stylesheet" />

    <style>
        body {
            font-family: Nunito, ui-sans-serif, system-ui, -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, "Noto Sans", sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol", "Noto Color Emoji" !important;
            line-height: 1.5;
        }
    </style>
</head>

<body class="g-sidenav-show  bg-gray-100">
    @inertia

    @env ('local')
    <script src="http://localhost:3000/browser-sync/browser-sync-client.js"></script>
    @endenv
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyD2aMS3Zy5ru63unlPgw1uV4v-fa7iRDfU&libraries=places" async="" defer=""></script>

    <script src="/user-assets/js/core/popper.min.js"></script>
    <script src="/user-assets/js/core/bootstrap.min.js"></script>
    <script src="/user-assets/js/plugins/perfect-scrollbar.min.js"></script>
    <script src="/user-assets/js/plugins/smooth-scrollbar.min.js"></script>

    <script src="/user-assets/js/plugins/dragula/dragula.min.js"></script>
    <script src="/user-assets/js/plugins/jkanban/jkanban.js"></script>
    <script src="/user-assets/js/plugins/chartjs.min.js"></script>

    <script async defer src="/user-assets/js/buttons.js"></script>

    <script src=/user-assets/js/soft-ui-dashboard.min7016.js?v=1.0.8"></script>
</body>


</html>
