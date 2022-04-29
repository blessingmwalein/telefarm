<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title inertia>{{ config('app.name', 'Laravel') }}</title>

    <!-- Fonts -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;700&display=swap">

    <link rel="stylesheet" href="{{asset('/css/bootstrap.min.css')}}">

    <!-- Customizable CSS -->
    <link rel="stylesheet" href="/css/main.css">
    <link rel="stylesheet" href="/css/blue.css">
    <link rel="stylesheet" href="/css/owl.carousel.css">
    <link rel="stylesheet" href="/css/owl.transitions.css">
    <link rel="stylesheet" href="/css/animate.min.html">
    <link rel="stylesheet" href="/css/rateit.css">
    <link rel="stylesheet" href="/css/bootstrap-select.min.css">

    <!-- Icons/Glyphs -->
    <link rel="stylesheet" href="/css/font-awesome.css">



    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Barlow:200,300,300i,400,400i,500,500i,600,700,800" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Roboto:300,400,500,700' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,400italic,600,600italic,700,700italic,800' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
    <link ref="stylesheet" type="text/css" href="/css/snackbar.css" />

    <!-- Styles -->
    <link rel="stylesheet" href="{{ mix('css/app.css') }}">

    <!-- Scripts -->
    @routes
    <script src="{{ mix('js/app.js') }}" defer></script>

    <style>
        [type='text'],
        [type='email'],
        [type='url'],
        [type='password'],
        [type='number'],
        [type='date'],
        [type='datetime-local'],
        [type='month'],
        [type='search'],
        [type='tel'],
        [type='time'],
        [type='week'],
        [multiple],
        textarea,
        select {
            border-color: #eee;
            ;
            border: 1px solid #eee;
        }

        .form-control {
            display: block;
            width: 100%;
            height: 34px;
            padding: 6px 12px;
            font-size: 14px;
            line-height: 1.42857143;
            color: #555;
            background-color: #fff;
            background-image: none;
            border: 1px solid #ccc !important;
            border-radius: 4px;
            -webkit-box-shadow: inset 0 1px 1px rgb(0 0 0 / 8%);
            box-shadow: inset 0 1px 1px rgb(0 0 0 / 8%);
            -webkit-transition: border-color ease-in-out .15s, -webkit-box-shadow ease-in-out .15s;
            -o-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
            transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
        }
    </style>
</head>

<body class="font-sans antialiased">
    @inertia

    @env ('local')
    <script src="http://localhost:3000/browser-sync/browser-sync-client.js"></script>
    @endenv
    <script src="https://js.braintreegateway.com/web/dropin/1.13.0/js/dropin.min.js"></script>
    <script>
        
    </script>
    <script src="/js/jquery-1.11.1.min.js"></script>
    <script src="/js/bootstrap.min.js"></script>
    <script src="/js/bootstrap-hover-dropdown.min.js"></script>
    <script src="/js/owl.carousel.min.js"></script>
    <script src="/js/echo.min.js"></script>
    <script src="/js/jquery.easing-1.3.min.js"></script>
    <script src="/js/bootstrap-slider.min.js"></script>
    <script src="/js/jquery.rateit.min.js"></script>
    <script src="/js/lightbox.min.js"></script>
    <script src="/js/bootstrap-select.min.js"></script>
    <script src="/js/wow.min.js"></script>
    <script src="/js/scripts.js"></script>
    <script src="/js/countdown.js"></script>
    <script src="/js/snackbar.js"></script>


</body>

</html>