<?php

Route::group(['prefix'=>'admin','namespace'=>'Admin'],function (){
    Auth::routes();
    Route::get('/', 'HomeController@index')->name('home');

    Route::group(['prefix'=>'slider'],function (){
        Route::get('/','SliderController@index')->name('admin.slider');
        Route::get('/create','SliderController@create')->name('admin.slider.create');
        Route::post('/store','SliderController@store')->name('admin.slider.store');
        Route::get('/edit/{slider}','SliderController@edit')->name('admin.slider.edit');
        Route::post('/update/{slider}','SliderController@update')->name('admin.slider.update');
        Route::get('/delete/{slider}','SliderController@delete')->name('admin.slider.delete');
    });

    Route::group(['prefix'=>'news'],function (){
        Route::get('/','NewsController@index')->name('admin.article');
        Route::get('/create','NewsController@create')->name('admin.article.create');
        Route::post('/store','NewsController@store')->name('admin.article.store');
        Route::get('/edit/{article}','NewsController@edit')->name('admin.article.edit');
        Route::post('/update/{article}','NewsController@update')->name('admin.article.update');
        Route::get('/delete/{article}','NewsController@delete')->name('admin.article.delete');
    });

    Route::group(['prefix'=>'college'],function (){
        Route::get('/','CollegeController@index')->name('admin.college');
        Route::get('/create','CollegeController@create')->name('admin.college.create');
        Route::post('/store','CollegeController@store')->name('admin.college.store');
        Route::get('/edit/{college}','CollegeController@edit')->name('admin.college.edit');
        Route::post('/update/{college}','CollegeController@update')->name('admin.college.update');
        Route::get('/delete/{college}','CollegeController@delete')->name('admin.college.delete');

        Route::group(['prefix'=>'/show-objective'],function (){
            Route::get('/index/{college}','ObjectiveController@index')->name('admin.college.objective');
            Route::get('/create/{college}','ObjectiveController@create')->name('admin.objective.create');
            Route::post('/store','ObjectiveController@store')->name('admin.objective.store');
            Route::get('/edit/{objective}','ObjectiveController@edit')->name('admin.objective.edit');
            Route::post('/update/{objective}','ObjectiveController@update')->name('admin.objective.update');
            Route::get('/delete/{objective}','ObjectiveController@delete')->name('admin.objective.delete');
        });
    });


    Route::get('/contact-message','ContactCntroller@index')->name('admin.contact-message');
});

Route::group(['namespace'=>'Site','middleware'=>'lang'],function (){
Route::get('/lang/{lang}','HomeController@changeLang')->name('site.lang');

Route::get('/', 'HomeController@index')->name('site.home');
Route::get('/about', 'HomeController@about')->name('site.about');
Route::get('/live', 'HomeController@live')->name('site.live');
Route::get('/contact-us', 'HomeController@contact')->name('site.contact');
Route::post('/contact-us', 'HomeController@sendMessage')->name('site.send-message');
Route::get('/news', 'NewsController@index')->name('site.news');
Route::get('/college-detail/{college}', 'CollegeController@details')->name('site.college-detail');

});
