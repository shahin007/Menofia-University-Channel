<?php

namespace App\Http\Controllers\Admin;

use App\Http\Requests\SliderRequest;
use App\Slider;
use App\traits\UploadsImages;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class SliderController extends Controller
{

    use UploadsImages;
    public function index()
    {
        $rows = Slider::latest()->get();
        return view('admin.pages.slider.index',compact('rows'));
    }

    public function create()
    {
        $slider= new Slider;
        return view('admin.pages.slider.form',compact('slider'));
    }

    public function store(SliderRequest $request)
    {
        $slider = Slider::create($request->except(['photo']));
        if ($request->photo)
            $this->uploadsFile($request->photo,$slider);
        return redirect()->route('admin.slider.edit',['id'=>$slider->id])->withSuccess('Operation Successfully');
    }

    public function edit(Slider $slider)
    {
        return view('admin.pages.slider.form',compact('slider'));
    }

    public function update(SliderRequest $request,Slider $slider)
    {
        $slider->update($request->except(['photo']));
        if ($request->photo)
            $this->uploadsFile($request->photo,$slider,true);
        return redirect()->back()->withSuccess('Operation Successfully');
    }

    public function delete(Slider $slider)
    {
        $slider->trush();
        return redirect()->route('admin.slider')->withSuccess('Operation Successfully');
    }
}
