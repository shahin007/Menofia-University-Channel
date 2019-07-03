<!DOCTYPE html>
<html>

<head>
    <!-- Meta Tags
    ======================-->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta NAME="keywords" CONTENT="" />
    <meta NAME="copyright" CONTENT="" />

    <!-- Title Name
    ================================-->
    <title>{{env('APP_NAME')}} | @yield('title')</title>

    <!-- Fave Icons
    ================================-->
    <link rel="shortcut icon" href="{{asset('assets/site/images/fav-icon.png')}}">

    <!-- Font
    ================================-->
    <link href="https://fonts.googleapis.com/css?family=Changa:400,600&amp;subset=arabic" rel="stylesheet">

    <!-- Css Base And Vendor
    ===================================-->
    @if(app()->isLocale('ar'))
        <link rel="stylesheet" href="{{asset('assets/site/vendor/bootstrap/bootstrap-ar.css')}}">
    @else
<link rel="stylesheet" href="{{asset('assets/site/vendor/bootstrap/bootstrap-en.css')}}">
    @endif
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
    <link rel="stylesheet" href="{{asset('assets/site/vendor/owl.carousel/owl.carousel.css')}}">
    <link rel="stylesheet" href="{{asset('assets/site/vendor/popup/magnific-popup.css')}}">
    <link rel="stylesheet" href="{{asset('assets/site/vendor/animation/animate.css')}}">

    <!-- Site Css
    ====================================-->
    <link rel="stylesheet" href="{{asset('assets/site/css/style.css')}}">
@if(app()->isLocale('ar'))
    <link rel="stylesheet" href="{{asset('assets/site/css/rtl.css')}}">
@endif
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<div class="wrapper">
    <!-- Header
    ==========================================-->
   @include('site.layouts.header')
    <!-- Home Main
    ==========================================-->
    <div class="main">
        <!-- Home Section
        ==========================================-->
        @yield('slider')
        <!-- Page Content
        ==========================================-->
        <div class="page-content">
            @yield('content')
        </div><!--End Page Content-->
        @include('site.layouts.footer')
    </div><!--End Main-->
</div><!--End wrapper-->
<!-- JS Base And Vendor
==========================================-->
<script src="{{asset('assets/site/vendor/jquery/jquery.js')}}"></script>
<script src="{{asset('assets/site/vendor/bootstrap/bootstrap.js')}}"></script>
<script src="{{asset('assets/site/vendor/owl.carousel/owl.carousel.js')}}"></script>
<script src="{{asset('assets/site/vendor/popup/magnific-popup.js')}}"></script>
<script src="{{asset('assets/site/vendor/animation/wow.min.js')}}"></script>
<script src="{{asset('assets/site/js/main.js')}}"></script>
<script>
    wow = new WOW(
        {
            animateClass: 'animated',
            offset: 0,
            callback: function(box) {
                console.log("WOW: animating <" + box.tagName.toLowerCase() + ">")
            }
        }
    );
    wow.init();
</script>
</body>
</html>