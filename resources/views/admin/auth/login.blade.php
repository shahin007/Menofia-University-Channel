<!DOCTYPE html>
<html>
<head>
    <!-- Meta Tags
    ======================-->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="author" content="">

    <!-- Title Name
    ================================-->
    <title> {{env('APP_NAME')}}</title>

    <!-- Fave Icons
    ================================-->
    <link rel="shortcut icon" href="{{asset('assets/admin/images/fav-icon.png')}}">

    <!-- Google Web Fonts
    ===========================-->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,600" rel="stylesheet">

    <!-- Css Base And Vendor
    ===================================-->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" media="all">
    <link rel="stylesheet" href="{{asset('assets/admin/vendor/datepicker/jquery.datetimepicker.min.css')}}">
    <link rel="stylesheet" href="{{asset('assets/admin/vendor/jquery-ui/jquery-ui.min.css')}}">
    <link rel="stylesheet" href="{{asset('assets/admin/vendor/animation/animate.css')}}">

    <!-- Site Css
    ====================================-->
    <link rel="stylesheet" href="{{asset('assets/admin/css/style.css')}}">
    <link rel="stylesheet" href="{{asset('assets/admin/css/theme/default-theme.css')}}">
</head>
<body>
<div class="log-wrap">
    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-12">
                <div class="login-register">
                    <div class="logo"><img src="{{asset('assets/site/images/logo.jpg')}}"></div>
                    <form class="login-form" method="POST" action="{{ route('login') }}">
                            @csrf
                        <div class="form-title">login</div>
                        @if ($errors->any())
                            <div class="alert alert-danger text-center">
                                <ul>
                                    @foreach ($errors->all() as $error)
                                        <li>{{ $error }}</li>
                                    @endforeach
                                </ul>
                            </div>
                        @endif
                        <div class="form-group">
                            <input type="text" placeholder="Email Address"  name="email" value="{{ old('email') }}" required autocomplete="email" class="form-control">
                        </div>
                        <div class="form-group">
                            <input type="password" placeholder="Password" name="password" required autocomplete="current-password" class="form-control">
                        </div>
                        <div class="form-group">
                            <div class="remmeber">
                                <input id="remmeber" name="remember" type="checkbox">
                                <label for="remmeber">Remmeber</label>
                            </div>
                        </div>
                        <div class="form-group">
                            <button class="custom-btn">login</button>
                        </div>
                    </form>
                </div>
            </div>
        </div><!--End row-->
    </div>
</div>
<!-- JS Base And Vendor
===================================-->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="{{asset('assets/admin/vendor/owl.carousel/owl.carousel.min.js')}}"></script>
<script src="{{asset('assets/admin/vendor/datepicker/jquery.datetimepicker.full.min.js')}}"></script>
<script src="{{asset('assets/admin/vendor/jquery-ui/jquery-ui.min.js')}}"></script>
<script src="{{asset('assets/admin/vendor/count-to/jquery.countTo.js')}}"></script>

<!--JS Main
====================================-->
<script src="{{asset('assets/admin/js/main.js')}}"></script>
</body>
</html>