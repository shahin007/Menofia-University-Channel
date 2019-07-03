@extends('admin.layouts.master')

@section('title')
    article Page
@endsection

@section('content')
    <div class="content">
        <div class="col-sm-12 page-heading">
            <div class="col-sm-6">
                <h2>article form</h2>
            </div><!--End col-md-6-->
            <div class="col-sm-6">
                <ul class="breadcrumb">
                    <li><a href="{{route('home')}}">dashboard</a></li>
                    <li class="active">add article</li>
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
                        <form action="{{isset($article->id) ? route('admin.article.update',['id'=>$article->id]) : route('admin.article.store')}}" method="post" enctype="multipart/form-data">
                            {{csrf_field()}}

                            <div class="col-sm-6 form-group">
                                <label>Arabic Title : </label>
                                <input class="form-control" name="title_ar" value="{{$article->title_ar}}" type="text">
                            </div>
                            <div class="col-sm-6 form-group">
                                <label>English Title : </label>
                                <input class="form-control" name="title_en" value="{{$article->title_en}}" type="text">
                            </div>
                            <div class="col-sm-6 form-group">
                                <label>Video url: </label>
                                <input class="form-control" name="url" value="{{$article->url}}" type="url">
                            </div>

                            <div class="col-sm-6 form-group">
                                <label>Photo : </label>
                                <input class="form-control" type="file" name="photo">
                            </div>
                            @isset($article->id)
                            <div class="col-sm-6 form-group">
                                <img src="{{$article->photo}}">
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