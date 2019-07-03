<?php

namespace App\Http\Controllers\Site;

use App\Article;
use App\College;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class CollegeController extends Controller
{
    public function details(College $college)
    {
        $articles = Article::latest()->get();
        return view('site.pages.college-details',compact('college','articles'));
    }
}
