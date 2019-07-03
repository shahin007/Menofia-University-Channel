<?php

namespace App\Http\Controllers\Admin;

use App\Article;
use App\Http\Requests\ArticleRequest;
use App\traits\UploadsImages;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class NewsController extends Controller
{
    use UploadsImages;
    public function index()
    {
        $rows = Article::latest()->get();
        return view('admin.pages.article.index',compact('rows'));
    }

    public function create()
    {
        $article= new Article;
        return view('admin.pages.article.form',compact('article'));
    }

    public function store(ArticleRequest $request)
    {
        $article = Article::create($request->except(['photo']));
        if ($request->photo)
            $this->uploadsFile($request->photo,$article);
        return redirect()->route('admin.article.edit',['id'=>$article->id])->withSuccess('Operation Successfully');
    }

    public function edit(Article $article)
    {
        return view('admin.pages.article.form',compact('article'));
    }

    public function update(ArticleRequest $request,Article $article)
    {
        $article->update($request->except(['photo']));
        if ($request->photo)
            $this->uploadsFile($request->photo,$article,true);
        return redirect()->back()->withSuccess('Operation Successfully');
    }

    public function delete(Article $article)
    {
        $article->trush();
        return redirect()->route('admin.article')->withSuccess('Operation Successfully');
    }
}
