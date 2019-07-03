@extends('site.layouts.master')

@section('title')
    {{$college->name}}
@endsection

@section('slider')
    <div class="page-head">
        <div class="container">
            <div class="row">
                <div class="col-md-12 col-sm-12">
                    <div class="head-title">{{$college->name}}</div>
                </div>
            </div>
        </div>
    </div>
@endsection

@section('content')
    <div class="page-content">
        <!-- Start Section
        ==========================================-->
        <section class="section-setting section-color">
            <div class="container">
                <div class="row">
                    <div class="about-inner col-md-12 col-sm-12">
                        <div class="col-md-7 col-sm-12 no-pad">
                            <div class="info-text">
                               {{app()->getLocale() == 'en' ? $college->desc_en : $college->desc_ar}}
                            </div>
                        </div>
                        <div class="col-md-5 col-sm-12">
                            <div class="faculty-img">
                                <img src="{{$college->photo}}">
                            </div>
                        </div>
                        <div class="clearfix"></div>
                        <div class="head-title">
                            {{app()->getLocale() == 'en' ? 'Sub-objectives' : 'الأهداف الفرعية'}}:
                        </div>
                        <ul class="dot-lists">
                           @foreach($college->objectives as $objective)
                            <li>
                                {{$loop->iteration}}.{{$objective->title}}
                            </li>
                           @endforeach
                        </ul>
                    </div>
                </div><!--End row-->
            </div><!--End Container-->
        </section><!-- End Section -->
        
        <!-- Start Section
        ==========================================-->
        <section class="section-setting ">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-sm-12 wow fadeInUp">
                        <div class="head-title">
                            
                            {{app()->getLocale() == 'en' ? 'Weekly publication of the Faculty' : 'النشر الأسبوعي للكلية'}}
                        </div>
                    </div>
                    <div class="col-md-12 col-sm-12 wow fadeInUp">
                        <div class="owl-carousel owl-theme news-slid">
                           @foreach($articles as $article)
                            <div class="carousel-item">
                                <div class="news-item">
                                    <div class="news-item-img">
                                        <img src="{{$article->photo}}">
                                        <a class="popup-youtube mfp-iframe" href="{{$article->url}}">
                                            <i class="fa fa-play"></i> {{app()->getLocale() == 'en' ? 'Watch video' : 'مشاهده الفيديو'}}
                                        </a>
                                    </div>
                                    <span>
                                                    {{$article->title}}
                                                </span>
                                </div>
                            </div>
                           @endforeach
                        </div>
                    </div>
                </div><!--End row-->
            </div><!--End Container-->
        </section><!-- End Section -->
    </div><!--End Page Content-->
@endsection
