<?php

namespace App\traits;


use App\Image;

trait UploadsImages
{

    public function uploadsFile($file,$model,$update = false)
    {
        $name = rand(0000,9999).'-'.str_replace(' ','-',$file->getClientOriginalName());
        $full_destination =public_path('/uploads/images/');
        $file->move($full_destination,$name);
        if ($update)
        {
            $img = $model->image;
            $oldImage =$img->url;
            if(is_file(public_path($oldImage)))
            {
                @unlink(public_path($oldImage));
            }
        }else
        {
            $img = new Image();
        }
        $img->url = '/uploads/images/'.$name;
        $img->imageable()->associate($model)->save();
    }

}
