@extends('admin.layouts.master')

@section('title')
    objective Page
@endsection

@section('content')
    <div class="content">
        <div class="col-sm-12 page-heading">
            <div class="col-sm-6">
                <h2>objective form</h2>
            </div><!--End col-md-6-->
            <div class="col-sm-6">
                <ul class="breadcrumb">
                    <li><a href="{{route('home')}}">dashboard</a></li>
                    <li class="active">add objective</li>
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
                        <form action="{{isset($objective->id) ? route('admin.objective.update',['id'=>$objective->id]) : route('admin.objective.store')}}" method="post" enctype="multipart/form-data">
                            {{csrf_field()}}
                        <input type="hidden" name="college_id" value="{{$college->id}}" />
                            <div class="col-sm-6 form-group">
                                <label>Arabic Title : </label>
                                <input class="form-control" name="title_ar" value="{{$objective->title_ar}}" type="text">
                            </div>
                            <div class="col-sm-6 form-group">
                                <label>English Title : </label>
                                <input class="form-control" name="title_en" value="{{$objective->title_en}}" type="text">
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