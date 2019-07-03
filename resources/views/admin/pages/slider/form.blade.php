@extends('admin.layouts.master')

@section('title')
    Slider Page
@endsection

@section('content')
    <div class="content">
        <div class="col-sm-12 page-heading">
            <div class="col-sm-6">
                <h2>Slider form</h2>
            </div><!--End col-md-6-->
            <div class="col-sm-6">
                <ul class="breadcrumb">
                    <li><a href="{{route('home')}}">dashboard</a></li>
                    <li class="active">add Slider</li>
                </ul>
            </div><!--End col-md-6-->
        </div>
        <div class="spacer-15"></div>
        <div class="widget">
            <div class="widget-content">
                <div class="col-sm-12">
                    @if ($errors->any())
                        <div class="alert alert-danger text-center">
                            <ul>
                                @foreach ($errors->all() as $error)
                                    <li>{{ $error }}</li>
                                @endforeach
                            </ul>
                        </div>
                    @endif
                    <div class="add-user-form">
                        <form action="{{isset($slider->id) ? route('admin.slider.update',['id'=>$slider->id]) : route('admin.slider.store')}}" method="post" enctype="multipart/form-data">
                            {{csrf_field()}}

                            <div class="col-sm-6 form-group">
                                <label>Arabic Title : </label>
                                <input class="form-control" name="title_ar" value="{{$slider->title_ar}}" type="text">
                            </div>
                            <div class="col-sm-6 form-group">
                                <label>English Title : </label>
                                <input class="form-control" name="title_en" value="{{$slider->title_en}}" type="text">
                            </div>
                            <div class="col-sm-6 form-group">
                                <label>Arabic Description : </label>
                                <textarea class="form-control" name="desc_ar">{{$slider->desc_ar}}</textarea>
                            </div>
                            <div class="col-sm-6 form-group">
                                <label>English Description : </label>
                                <textarea class="form-control" name="desc_en">{{$slider->desc_en}}</textarea>
                            </div>
                            <div class="col-sm-6 form-group">
                                <label>Photo : </label>
                                <input class="form-control" type="file" name="photo">
                            </div>
                        
                            <div class="col-sm-12 form-group">
                                <button class="custom-btn">submit</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div><!--End Widget-->
    </div><!--End Content-->
@endsection