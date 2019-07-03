<?php

namespace App\Http\Middleware;

use Closure;

class LangMiddleware
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        $lang = app()->getLocale();
        if (session()->has('lang'))
        {
            $lang = session()->get('lang');
        }
        app()->setLocale($lang);
        session()->put('lang',$lang);
        return $next($request);
    }
}
