@extends('layouts.site')

@section('content')
<!-- Main jumbotron for a primary marketing message or call to action -->
<div class="jumbotron">
    <div class="container">
        <h1>{{ $header }}</h1>
        <p>{{ $message }}</p>
        <p class="pull-left"><a class="btn btn-primary btn-lg" href="#" role="button">Learn more &raquo;</a> </p>
        <p class="pull-right"><a class="btn btn-primary btn-lg" href="{{ route('articleStore')}}">Add article</a></p>
    </div>
</div>

<div class="container">
    <!-- Example row of columns -->
    <div class="row">

        @foreach($articles as $article)

            <div class="col-md-4">
                <h2>{{ $article->title }}</h2>
                <p>{{ $article->desc }}</p>
                <p class="pull-left"><a class="btn btn-default" href="{{ route('articleShow', [$article->id]) }}" role="button">View details &raquo;</a></p>

                <form action="{{ route('articleDelete', [$article->id]) }}" method="post" class="form-inline pull-right">
                    {{--<input type="hidden" name="_method" value="DELETE">--}}
                    {{ method_field('DELETE')}}
                    {{ csrf_field() }}
                    <button type="submit" class="btn btn-danger">Delete</button>
                </form>
                
            </div>
        @endforeach

        {{--<div class="col-md-4">--}}
        {{--<h2>Heading</h2>--}}
        {{--<p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>--}}
        {{--<p><a class="btn btn-default" href="#" role="button">View details &raquo;</a></p>--}}
        {{--</div>--}}
        {{--<div class="col-md-4">--}}
        {{--<h2>Heading</h2>--}}
        {{--<p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>--}}
        {{--<p><a class="btn btn-default" href="#" role="button">View details &raquo;</a></p>--}}
        {{--</div>--}}
        {{--<div class="col-md-4">--}}
        {{--<h2>Heading</h2>--}}
        {{--<p>Donec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Vestibulum id ligula porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>--}}
        {{--<p><a class="btn btn-default" href="#" role="button">View details &raquo;</a></p>--}}
        {{--</div>--}}
    </div>

    <hr>
</div> <!-- /container -->
@endsection

