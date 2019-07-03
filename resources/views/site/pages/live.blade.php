@extends('site.layouts.master')

@section('title')
    {{app()->getLocale() == 'en' ? 'Live' : 'بث مباشر'}}
@endsection

@section('slider')
    <div class="page-head">
        <div class="container">
            <div class="row">
                <div class="col-md-12 col-sm-12">
                    <div class="head-title">{{app()->getLocale() == 'en' ? 'Live' : 'بث مباشر'}}</div>
                </div>
            </div>
        </div>
    </div>
@endsection

@section('content')
    <div class="page-content">
        <!-- Start Section
        ==========================================-->
        <section class="section-setting">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-sm-12 wow fadeInUp">
                        <div class="head-title">
                            {{app()->getLocale() == 'en' ? 'Live broadcast of the university' : 'بث مباشر من الجامعه'}}
                        </div>
                    </div>
                    <div class="col-md-12 col-sm-12 wow fadeInUp">
                        <video id="video" width="100%" height="560" autoplay></video>
                    
                        <canvas id="canvas" width="100%" height="560"></canvas>

                        <script type="text/javascript">
                            // Grab elements, create settings, etc.
                            var video = document.getElementById('video');

                            // Get access to the camera!
                            if(navigator.mediaDevices && navigator.mediaDevices.getUserMedia) {
                                // Not adding `{ audio: true }` since we only want video now
                                navigator.mediaDevices.getUserMedia({ video: true }).then(function(stream) {
                                    //video.src = window.URL.createObjectURL(stream);
                                    video.srcObject = stream;
                                    video.play();
                                });
                            }

                            /* Legacy code below: getUserMedia 
                            else if(navigator.getUserMedia) { // Standard
                                navigator.getUserMedia({ video: true }, function(stream) {
                                    video.src = stream;
                                    video.play();
                                }, errBack);
                            } else if(navigator.webkitGetUserMedia) { // WebKit-prefixed
                                navigator.webkitGetUserMedia({ video: true }, function(stream){
                                    video.src = window.webkitURL.createObjectURL(stream);
                                    video.play();
                                }, errBack);
                            } else if(navigator.mozGetUserMedia) { // Mozilla-prefixed
                                navigator.mozGetUserMedia({ video: true }, function(stream){
                                    video.srcObject = stream;
                                    video.play();
                                }, errBack);
                            }
                            */
                        </script>
                    </div>
                </div>
            </div>
        </section>
    </div><!--End Page Content-->
@endsection
