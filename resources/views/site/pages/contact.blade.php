@extends('site.layouts.master')

@section('title')
    {{app()->getLocale() == 'en' ? 'contact page' : 'صفحه التواصل'}}
@endsection

@section('slider')
    <div class="page-head">
        <div class="container">
            <div class="row">
                <div class="col-md-12 col-sm-12">
                    <div class="head-title">{{app()->getLocale() == 'en' ? 'contact page' : 'صفحه التواصل'}}</div>
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
                <div class="row text-center">
                    @if ($errors->any())
                        <div class="alert alert-danger text-center">
                            <ul>
                                @foreach ($errors->all() as $error)
                                    <li>{{ $error }}</li>
                                @endforeach
                            </ul>
                        </div>
                    @endif

                    @if(session()->has('success'))
                        <div class="alert alert-success text-center">
                            <h4>{{session()->get('success')}}</h4>
                        </div>
                    @endif
                    <div class="col-md-12 col-sm-12 wow fadeInLeft">
                        <form action="{{route('site.send-message')}}" class="contact-form" method="post">
                            {{csrf_field()}}
                            <div class="col-md-6 col-sm-6 form-group">
                                <input type="text" class="form-control" name="name" placeholder="{{app()->getLocale() == 'en' ? 'Full Name' : 'الاسم بالكامل'}}" required>
                            </div>
                            <div class="col-md-6 col-sm-6 form-group">
                                <input type="text" class="form-control" name="email" placeholder="{{app()->getLocale() == 'en' ? 'Email' : 'البريد الالكترزني'}}" required>
                            </div>
                            <div class="col-md-6 col-sm-6 form-group">
                                <input type="text" class="form-control" name="phone" placeholder="{{app()->getLocale() == 'en' ? 'Phone number' : 'رقم الهاتف'}}" required>
                            </div>
                            <div class="col-md-6 col-sm-6 form-group">
                                <input type="text" class="form-control" name="subject" placeholder="{{app()->getLocale() == 'en' ? 'Subject' : 'الموضوع'}}" required>
                            </div>
                            <div class="col-md-12 col-sm-12 form-group">
                                <textarea class="form-control" placeholder="{{app()->getLocale() == 'en' ? 'Message' : 'الرساله'}}" name="message" required></textarea>
                            </div>
                            <div class="col-md-12 col-sm-12 form-group">
                                <button type="submit" class="custom-btn"><span>{{app()->getLocale() == 'en' ? 'Send message' : 'ارسال الرساله'}}</span></button>
                            </div>
                        </form>
                    </div>
                    {{-- <div class="col-md-5 col-sm-12 wow fadeInRight">
                        <div class="contact-info">
                            <div class="info-text">{{app()->getLocale() == 'en' ? 'Contact information' : 'بيانات التواص'}}</div>
                            <div class="cont-item">
                                <div class="cont-icon">
                                    <i class="fa fa-map-marker"></i>
                                </div>
                                <div class="cont-item-info">
                                    Gamal Abd El-Nasir, Qism Shebeen El-Kom,
                                    <br>
                                    Shibin el Kom, Menofia Governorate
                                </div>
                            </div><!--end Cont Item-->
                            <div class="cont-item">
                                <div class="cont-icon">
                                    <i class="fa fa-envelope"></i>
                                </div>
                                <div class="cont-item-info">
                                    menofia@menofia.edu.eg
                                </div>
                            </div><!--end Cont Item-->
                            <div class="cont-item">
                                <div class="cont-icon">
                                    <i class="fa fa-phone"></i>
                                </div>
                                <div class="cont-item-info">
                                    2224216-2048 /2224155-2048 /2224347-2048
                                </div>
                            </div><!--end Cont Item-->
                            <div class="cont-item">
                                <div class="cont-icon">
                                    <i class="fa fa-fax"></i>
                                </div>
                                <div class="cont-item-info">
                                    5752777-202 /2226454-2048
                                </div>
                            </div><!--end Cont Item-->
                        </div>
                    </div> --}}
                </div>
            </div>
            <div class="map">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d6870.520826112512!2d31.005961476950745!3d30.570193264393207!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14f7d6eb70a91047%3A0xc353387ed2f37809!2sMenoufiya+University!5e0!3m2!1sen!2seg!4v1560246464632!5m2!1sen!2seg" width="100%" height="650" frameborder="0" style="border:0" allowfullscreen></iframe>
            </div>
        </section><!-- End Section -->
    </div><!--End Page Content-->
@endsection
