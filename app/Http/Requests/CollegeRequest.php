<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class CollegeRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        $roles = [
            'name_ar'=>'required|max:191',
            'name_en'=>'required|max:191',
            'desc_ar'=>'required|max:191',
            'desc_en'=>'required|max:191',
        ];
        if ($this->routeIs('admin.college.store'))
        {
            $roles['photo'] = 'required|image';
        }else
        {
            $roles['photo'] = 'image';
        }
        return $roles;
    }
}
