<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/

Route::get('/', function () {
    return view('welcome');
});
Route::group(['namespace' => 'Backend', 'prefix' => 'backend'], function()
{
    // Controllers Within The "App\Http\Controllers\Backend" Namespace

    Route::group(['prefix' => 'parent-cate'], function () {
        Route::get('/', ['as' => 'parent-cate.index', 'uses' => 'ParentCateController@index']);
        Route::get('/create', ['as' => 'parent-cate.create', 'uses' => 'ParentCateController@create']);
        Route::post('/store', ['as' => 'parent-cate.store', 'uses' => 'ParentCateController@store']);
        Route::get('{id}/edit',   ['as' => 'parent-cate.edit', 'uses' => 'ParentCateController@edit']);
        Route::post('/update', ['as' => 'parent-cate.update', 'uses' => 'ParentCateController@update']);
        Route::get('{id}/destroy', ['as' => 'parent-cate.destroy', 'uses' => 'ParentCateController@destroy']);
    }); 
    Route::group(['prefix' => 'tag'], function () {
        Route::get('/', ['as' => 'tag.index', 'uses' => 'TagController@index']);
        Route::get('/create', ['as' => 'tag.create', 'uses' => 'TagController@create']);
        Route::post('/store', ['as' => 'tag.store', 'uses' => 'TagController@store']);
        Route::get('{id}/edit',   ['as' => 'tag.edit', 'uses' => 'TagController@edit']);
        Route::post('/update', ['as' => 'tag.update', 'uses' => 'TagController@update']);
        Route::get('{id}/destroy', ['as' => 'tag.destroy', 'uses' => 'TagController@destroy']);
    });
    Route::group(['prefix' => 'movies'], function () {
        Route::get('/', ['as' => 'movies.index', 'uses' => 'MoviesController@index']);
        Route::get('/create', ['as' => 'movies.create', 'uses' => 'MoviesController@create']);
        Route::post('/store', ['as' => 'movies.store', 'uses' => 'MoviesController@store']);
        Route::get('{id}/edit',   ['as' => 'movies.edit', 'uses' => 'MoviesController@edit']);
        Route::post('/update', ['as' => 'movies.update', 'uses' => 'MoviesController@update']);
        Route::get('{id}/destroy', ['as' => 'movies.destroy', 'uses' => 'MoviesController@destroy']);
    });  
    Route::group(['prefix' => 'cate'], function () {
        Route::get('/{parent_id?}', ['as' => 'cate.index', 'uses' => 'CateController@index']);
        Route::get('/create/{parent_id?}', ['as' => 'cate.create', 'uses' => 'CateController@create']);
        Route::post('/store', ['as' => 'cate.store', 'uses' => 'CateController@store']);
        Route::post('/ajax-list-by-parent', ['as' => 'cate.ajax-list-by-parent', 'uses' => 'CateController@ajaxListByParent']);
        
        Route::get('{id}/edit',   ['as' => 'cate.edit', 'uses' => 'CateController@edit']);
        Route::post('/update', ['as' => 'cate.update', 'uses' => 'CateController@update']);
        Route::get('{id}/destroy', ['as' => 'cate.destroy', 'uses' => 'CateController@destroy']);
    }); 
    Route::group(['prefix' => 'banner'], function () {
        Route::get('/{object_type}/{object_id}', ['as' => 'banner.index', 'uses' => 'BannerController@index']);
        Route::get('/create/', ['as' => 'banner.create', 'uses' => 'CateController@create']);
        Route::post('/store', ['as' => 'banner.store', 'uses' => 'CateController@store']);
        Route::get('{id}/edit',   ['as' => 'banner.edit', 'uses' => 'CateController@edit']);
        Route::post('/update', ['as' => 'banner.update', 'uses' => 'CateController@update']);
        Route::get('{id}/destroy', ['as' => 'banner.destroy', 'uses' => 'CateController@destroy']);
    }); 
 	Route::post('/tmp-upload', ['as' => 'image.tmp-upload', 'uses' => 'UploadController@tmpUpload']);
    Route::post('/update-order', ['as' => 'update-order', 'uses' => 'GeneralController@updateOrder']);
    Route::post('/get-slug', ['as' => 'get-slug', 'uses' => 'GeneralController@getSlug']);
    Route::post('/get-movies-external', ['as' => 'general.get-movies-external', 'uses' => 'GeneralController@getMoviesExternal']);
});