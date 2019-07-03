<?php

namespace App\Http\Controllers\Admin;

use App\Contact;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class ContactCntroller extends Controller
{
    public function index()
    {
        $rows = Contact::latest()->get();
        return view('admin.pages.contact.index',compact('rows'));
    }
}
