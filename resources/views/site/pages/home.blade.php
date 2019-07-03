@extends('site.layouts.master')

@section('title')
    {{app()->getLocale() == 'en' ? 'Home Page' : 'الصفحه الرئيسيه'}}
@endsection

@section('slider')
    @include('site.layouts.slider')
@endsection

@section('content')
    <div class="page-content">
        <!-- Start Section
                ==========================================-->
        <section class="section-setting section-color">
            <div class="container">
                <div class="row text-center">
                    <div class="col-md-12 col-sm-12 wow fadeInUp">
                        <div class="head-title">
                            @if(app()->getLocale() == 'en')
                            Colleges affiliated with the University of Menoufia
                            @else
                            الكليات التابعة لجامعة المنوفية
                            @endif
                        </div>
                    </div>
                    @foreach($colleges as $college)
                    <div class="col-md-3 col-sm-6 wow fadeInUp">
                        <div class="faculty-item">
                            <img src="{{$college->photo}}">
                            <a href="{{route('site.college-detail',['id'=>$college->id])}}">{{$college->name}}</a>
                        </div>
                    </div><!--End Col-md-3-->
                    @endforeach
                </div><!--End row-->
            </div><!--End Container-->
        </section><!-- End Section -->
        <!-- Start Section
        ==========================================-->
        <section class="section-setting">
            <div class="container">
                <div class="row">
                    <div class="col-md-7 col-sm-12 wow fadeInLeft">
                        <div class="head-title">
                            @if(app()->getLocale() == 'en')
                                Menoufia University as one of the institutions of higher education in Egypt
                            @else
                                جامعة المنوفية كإحدى مؤسسات التعليم العالي في مصر
                            @endif
                        </div>
                        <div class="info-text">
                            @if(app()->getLocale() == 'en')
                            The overall objective represents the final results to be achieved in the long run, often open-ended and not time-bound. It is not expressed in quantitative form, nor does it include a specific time frame for achieving it. The overall goals of the University are indicators of success to achieve its mission. In light of the vision and mission of the university
                            @else
                            يمثل الهدف العام النتائج النهائية التي يتعين تحقيقها على المدى الطويل ، وغالبًا ما تكون مفتوحة العضوية وليست محددة زمنياً. لا يتم التعبير عنها في شكل كمي ، ولا تتضمن إطارًا زمنيًا محددًا لتحقيق ذلك. الأهداف العامة للجامعة هي مؤشرات النجاح لتحقيق رسالتها. في ضوء رؤية ورسالة الجامعة

                            @endif
                        </div>
                        <a href="{{route('site.about')}}" class="custom-btn">
                            <span>{{app()->getLocale() == 'en' ? 'more details' : 'عرض المزيد'}}</span>
                        </a>
                    </div>
                    <div class="col-md-5 col-sm-12">
                        <div class="about-img">
                            <img src="{{asset('assets/site/images/about.jpg')}}">
                        </div>
                    </div>
                </div><!--End row-->
            </div><!--End Container-->
        </section><!-- End Section -->
        <!-- Start Section
        ==========================================-->
        <section class="section-setting section-color">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-sm-12 wow fadeInUp">
                        <div class="head-title">
                            {{app()->getLocale() == 'en' ? 'latest News' : 'اخر الاخبار'}}
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
    </div>
@endsection
