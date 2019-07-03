<div class="welcome">
    <div class="container-fluid">
        <div class="row">
            <div id="home-slider" class="carousel slide" data-ride="carousel">
                <div class="carousel-inner" role="listbox">
                    @foreach($sliders as $slider)
                    <div class="item {{$loop->first ? 'active' : ''}}">
                        <img src="{{$slider->photo}}">
                        <div class="caption">
                            <div class="center-height">
                                <div class="head-title">
                                    {{$slider->title}}
                                </div>
                                <div class="info-text">
                                   {{$slider->desc}}
                                </div>
                            </div>
                        </div>
                    </div><!--End Item-->
                    @endforeach
                </div><!--End carousel-inner-->
                <div class="carousel-controls">
                    <a class="right carousel-control" href="#home-slider" role="button" data-slide="next">
                        <i class="fa fa-angle-left"></i>
                    </a>
                    <a class="left carousel-control" href="#home-slider" role="button" data-slide="prev">
                        <i class="fa fa-angle-right"></i>
                    </a>
                </div>
            </div><!--End Carousel-->
        </div>
    </div>
</div><!--End Home Section-->