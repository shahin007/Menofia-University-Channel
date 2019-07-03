<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Objective extends Model
{
    protected $guarded =['id'];

    public function getTitleAttribute()
    {
        return $this->{'title_'.app()->getLocale()};
    }

    public function college()
    {
        return $this->belongsTo(College::class);
    }
}
