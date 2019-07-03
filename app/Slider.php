<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Slider extends Model
{
    protected $guarded=['id'];

    public function image()
    {
        return $this->morphOne(Image::class, 'imageable')->withDefault();
    }

    public function getPhotoAttribute()
    {
        return $this->image->full_url;
    }

    public function getTitleAttribute()
    {
        return $this->{'title_'.app()->getLocale()};
    }

    public function trush()
    {
        if (is_file(public_path($this->image->url)))
        {
            @unlink(public_path($this->image->url));
        }
        $this->delete();
    }
}
