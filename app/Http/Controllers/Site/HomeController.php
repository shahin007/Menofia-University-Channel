<?php

namespace App\Http\Controllers\Site;

use App\Article;
use App\College;
use App\Contact;
use App\Http\Requests\ContactRequest;
use App\Slider;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class HomeController extends Controller
{
    public function changeLang($lang)
    {
        if (in_array($lang,['ar','en']))
        {
            session()->put('lang',$lang);
            return redirect()->back();
        }
        return abort(404);
    }


    public function index()
    {
        $sliders = Slider::latest()->get();
        $colleges = College::latest()->get();
        $articles = Article::latest()->get();
        return view('site.pages.home',compact('sliders','colleges','articles'));
    }

    public function about()
    {
        return view('site.pages.about');
    }

    public function live()
    {
        return view('site.pages.live');
    }

    public function contact()
    {
        return view('site.pages.contact');
    }

    public function sendMessage(ContactRequest $request)
    {
        Contact::create($request->all());
        return redirect()->back()->withSuccess('Send Successfully');
    }
}
