<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

//Route::get('/', function () {
//    return view('welcome');
//});

//Route::get('page', function () {

//    return 'Hello world!';
//    return view('page');
//} );

Route::get('/', 'IndexController@index');

Route::get('article/{id}', 'IndexController@show') -> name('articleShow');  //articleShow - псевдоним маршрута

Route::get('page/add', 'IndexController@add');

Route::post('page/add', 'IndexController@store') -> name('articleStore');

Route::delete('page/delete/{article}', 'IndexController@delete') -> name('articleDelete');