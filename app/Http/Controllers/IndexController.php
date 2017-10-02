<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Article;

class IndexController extends Controller
{
    protected $message;
    protected $header;

    public function __construct() {
        $this->logo = 'Yura Melnik';
        $this->header = 'I love you world!';
        $this->message = 'This is a template for a simple marketing or informational website. It includes a large callout called a jumbotron and three supporting pieces of content. Use it as a starting point to create something more unique.';
    }

    public function index() {

//        $articles = Article::all();
        $articles = Article::select(['id', 'title', 'desc'])->get();

//        dump($articles);

        return view('page')->with(['message'=>$this->message,
                                    'header'=>$this->header,
                                    'logo'=>$this->logo,
                                    'articles'=>$articles]);
    }

    public function show($id) {
//        $article = Article::find($id);
        $article = Article::select(['id', 'title', 'text'])->where('id', $id)->first();
//        dump($article);
        return view('article-content')->with(['message'=>$this->message,
                                            'header'=>$this->header,
                                            'logo'=>$this->logo,
                                            'article'=>$article]);
    }

    public function add() {
        return view('add-content')->with(['message'=>$this->message,
                                            'header'=>$this->header,
                                            'logo'=>$this->logo]);
    }

    public function store(Request  $request) {
//        dump($request->all());
        $this->validate($request, [
            'title' => 'required|max:255|min:5',
            'alias' => 'required|unique:articles,alias',
            'text' => 'required'
        ]);

        $data = $request->all();
        $article = new Article;
        $article->fill($data);
        $article->save();

        return redirect('/');
    }

    public function delete($article) {
        $article_del = Article::where('id', $article)->first();
        $article_del->delete();

        return redirect('/');
    }
}
