<?php

namespace App\Http\Controllers\Admin;

use App\College;
use App\Http\Requests\CollegeRequest;
use App\traits\UploadsImages;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class CollegeController extends Controller
{
    use UploadsImages;
    public function index()
    {
        $rows = College::latest()->get();
        return view('admin.pages.college.index',compact('rows'));
    }

    public function create()
    {
        $college= new College;
        return view('admin.pages.college.form',compact('college'));
    }

    public function store(CollegeRequest $request)
    {
        $college = College::create($request->except(['photo']));
        if ($request->photo)
            $this->uploadsFile($request->photo,$college);
        return redirect()->route('admin.college.edit',['id'=>$college->id])->withSuccess('Operation Successfully');
    }

    public function edit(College $college)
    {
        return view('admin.pages.college.form',compact('college'));
    }

    public function update(CollegeRequest $request,College $college)
    {
        $college->update($request->except(['photo']));
        if ($request->photo)
            $this->uploadsFile($request->photo,$college,true);
        return redirect()->back()->withSuccess('Operation Successfully');
    }

    public function delete(College $college)
    {
        $college->trush();
        return redirect()->route('admin.college')->withSuccess('Operation Successfully');
    }

}
