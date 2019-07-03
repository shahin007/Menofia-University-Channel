<header class="header">
    <div class="container">
        <a href="{{route('site.home')}}" class="logo">
            <img src="{{asset('assets/site/images/logo.jpg')}}">
        </a>
        <div class="header-widget">
            <button class="icon-btn btn-responsive-nav" data-toggle="collapse" data-target=".nav-main-collapse">
                <i class="fa fa-bars"></i>
            </button>
        </div>
    </div><!--End Logo-->
    <div class="navbar-collapse nav-main-collapse collapse">
        <div class="container">
            <nav class="nav-main">
                <ul class="nav navbar-nav">
                    <li class="{{Route::is('site.home') ? 'active' : ''}}">
                        <a href="{{route('site.home')}}">
                            <i class="fa fa-home"></i>{{app()->getLocale() == 'en' ? 'Home' : 'الرئيسيه'}}
                        </a>
                    </li>
                    <li class="{{Route::is('site.live') ? 'active' : ''}}">
                        <a href="{{route('site.live')}}">
                            <i class="fa fa-tv"></i>{{app()->getLocale() == 'en' ? 'Live' : 'بث مباشر'}}
                        </a>
                    </li>
                    <li class="{{Route::is('site.about') ? 'active' : ''}}">
                        <a href="{{route('site.about')}}">
                            <i class="fa fa-info"></i>{{app()->getLocale() == 'en' ? 'about University' : 'عن الجامعه'}}
                        </a>
                    </li>
                    <li class="{{Route::is('site.news') ? 'active' : ''}}">
                        <a href="{{route('site.news')}}">
                            <i class="fa fa-newspaper"></i>{{app()->getLocale() == 'en' ? 'News' : 'الاخبار'}}
                        </a>
                    </li>
                    <li class="{{Route::is('site.contact') ? 'active' : ''}}">
                        <a href="{{route('site.contact')}}">
                            <i class="fa fa-envelope"></i>{{app()->getLocale() == 'en' ? 'Contact us' : 'تواصل معنا'}}
                        </a>
                    </li>
                    <li class="lang">
                        <a href="{{route('site.lang',['lang'=>app()->isLocale('en') ? 'ar' : 'en'])}}">
                            {{app()->isLocale('en') ? 'العربية' : 'English'}}
                        </a>
                    </li>

                </ul><!--End .nav navbar-nav -->
            </nav>
        </div><!--End Container-->
    </div><!--End navbar-collapse-->
</header><!--End Header-->