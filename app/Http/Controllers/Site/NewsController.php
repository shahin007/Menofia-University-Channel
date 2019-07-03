<?php

namespace App\Http\Controllers\Site;

use App\Article;
use App\College;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class NewsController extends Controller
{
    public function index()
    {
        $articles = Article::latest()->get();
        return view('site.pages.news',compact('articles'));
    }
}
