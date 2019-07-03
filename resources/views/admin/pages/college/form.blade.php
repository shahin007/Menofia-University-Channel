@extends('admin.layouts.master')

@section('title')
    college Page
@endsection

@section('content')
    <div class="content">
        <div class="col-sm-12 page-heading">
            <div class="col-sm-6">
                <h2>college form</h2>
            </div><!--End col-md-6-->
            <div class="col-sm-6">
                <ul class="breadcrumb">
                    <li><a href="{{route('home')}}">dashboard</a></li>
                    <li class="active">add college</li>
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

                    @if(session()->has('success'))
                            <div class="alert alert-success text-center">
                                <h4>{{session()->get('success')}}</h4>
                            </div>
                    @endif
                    <div class="add-user-form">
                        <form action="{{isset($college->id) ? route('admin.college.update',['id'=>$college->id]) : route('admin.college.store')}}" method="post" enctype="multipart/form-data">
                            {{csrf_field()}}

                            <div class="col-sm-6 form-group">
                                <label>Arabic Name : </label>
                                <input class="form-control" name="name_ar" value="{{$college->name_ar}}" type="text">
                            </div>
                            <div class="col-sm-6 form-group">
                                <label>English Name : </label>
                                <input class="form-control" name="name_en" value="{{$college->name_en}}" type="text">
                            </div>
                            <div class="col-sm-6 form-group">
                                <label>Arabic Description : </label>
                                <textarea class="form-control" name="desc_ar">{{$college->desc_ar}}</textarea>
                            </div>
                            <div class="col-sm-6 form-group">
                                <label>English Description : </label>
                                <textarea class="form-control" name="desc_en">{{$college->desc_en}}</textarea>
                            </div>
                            <div class="col-sm-6 form-group">
                                <label>Photo : </label>
                                <input class="form-control" type="file" name="photo">
                            </div>
                            @isset($college->id)
                            <div class="col-sm-6 form-group">
                                <img src="{{$college->photo}}">
                            </div>
                            @endisset
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