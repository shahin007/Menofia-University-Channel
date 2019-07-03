@extends('admin.layouts.master')

@section('title')
    Slider Page
@endsection

@section('content')
    <div class="content">
        <div class="col-sm-12 page-heading">
            <div class="col-sm-6">
                <h2>Slider</h2>
            </div><!--End col-md-6-->
            <div class="col-sm-6">
                <ul class="breadcrumb">
                    <li><a href="{{route('home')}}">dashboard</a></li>
                    <li class="active">Slider</li>
                </ul>
            </div><!--End col-md-6-->
        </div>
        <div class="spacer-15"></div>
        <div class="widget">
            <div class="widget-content">
                <div class="col-sm-6">
                    <div class="top-table-link">
                        <a href="{{route('admin.slider.create')}}" class="custom-btn blue-bc">add new slider</a>
                    </div>
                </div>
                <div class="col-sm-12">
                    @if(session()->has('success'))
                        <div class="alert alert-success text-center">
                            <h4>{{session()->get('success')}}</h4>
                        </div>
                    @endif
                    <div class="table-responsive">
                        <table id="datatable" class="table table-hover table-bordered">
                            <thead>
                            <tr>
                                <th>id #</th>
                                <th>Arabic Title</th>
                                <th>English Title</th>
                                <th>Options</th>
                            </tr>
                            </thead>
                            <tbody>
                            @foreach($rows as $row)
                                <tr>
                                <td>{{$row->id}}</td>
                                <td>{{$row->title_ar}}</td>
                                <td>{{$row->title_en}}</td>
                                <td>
                                    <a href="{{route('admin.slider.edit',['id'=>$row->id])}}" class="icon-btn blue-bc"><i class="fa fa-pencil"></i></a>
                                    <a href="{{route('admin.slider.delete',['id'=>$row->id])}}" class="icon-btn red-bc"><i class="fa fa-trash-o"></i></a>
                                </td>
                            </tr>
                            @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div><!--End Widget-->
    </div><!--End Content-->
@endsection