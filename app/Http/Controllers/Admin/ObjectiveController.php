<?php

namespace App\Http\Controllers\Admin;

use App\College;
use App\Http\Requests\ObjectiveRequest;
use App\Objective;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class ObjectiveController extends Controller
{
    public function index(College $college)
    {
        $rows = Objective::with('college')->latest()->get();
        return view('admin.pages.objective.index',compact('rows','college'));
    }

    public function create(College $college)
    {
        $objective= new Objective();
        return view('admin.pages.objective.form',compact('objective','college'));
    }

    public function store(ObjectiveRequest $request)
    {
        $objective = Objective::create($request->all());
        return redirect()->route('admin.objective.edit',['id'=>$objective->id])->withSuccess('Operation Successfully');
    }

    public function edit(Objective $objective)
    {
        $college = $objective->college;
        return view('admin.pages.objective.form',compact('objective','college'));
    }

    public function update(ObjectiveRequest $request,Objective $objective)
    {
        $objective->update($request->all());
        return redirect()->back()->withSuccess('Operation Successfully');
    }

    public function delete(Objective $objective)
    {
        $objective->delete();
        return redirect()->back()->withSuccess('Operation Successfully');
    }
}
