<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">

    <title>Jumbotron Template for Bootstrap</title>

    <link href="{{ asset('css/bootstrap.min.css') }}" rel="stylesheet">
    <link href="{{ asset('css/jumbotron.css') }}" rel="stylesheet">

</head>

<body>

<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <a class="navbar-brand" href="#">{{ $logo }}</a>
        </div>
        <ul id="navbar" class="menu">
            <li><a href="https://laravel.com/docs">Documentation</a></li>
            <li><a href="https://laracasts.com">Laracasts</a></li>
            <li><a href="https://laravel-news.com">News</a></li>
            <li><a href="https://forge.laravel.com">Forge</a></li>
            <li><a href="https://github.com/laravel/laravel">GitHub</a></li>
        </ul><!--/.navbar-collapse -->
    </div>
</nav>

    @if(count($errors) > 0)
        <div class="alert alert-danger">
            <ul>
                @foreach($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
    @endif

    @yield('content')

<footer>
    <div class="container">
        <p>&copy; 2016 Company, Inc.</p>
    </div>
</footer>
</body>
</html>
