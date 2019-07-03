@extends('site.layouts.master')

@section('title')
    {{app()->getLocale() == 'en' ? 'latest News' : 'اخر الاخبار'}}
@endsection

@section('slider')
    <div class="page-head">
        <div class="container">
            <div class="row">
                <div class="col-md-12 col-sm-12">
                    <div class="head-title">{{app()->getLocale() == 'en' ? 'latest News' : 'اخر الاخبار'}}</div>
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
                    @foreach($articles as $article)
                    <div class="col-md-4 col-sm-6 wow fadeInUp">
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
                </div><!--End row-->
            </div><!--End Container-->
        </section><!-- End Section -->
    </div><!--End Page Content-->
@endsection