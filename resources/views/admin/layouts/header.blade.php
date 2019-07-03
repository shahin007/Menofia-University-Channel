<div class="top-header">
    <div class="toggle-icon"  data-toggle="tooltip" data-placement="right" title="Toggle Menu">
        <span></span>
        <span></span>
        <span></span>
    </div>
    <ul class="top-header-links">

        <div class="dropdown profile">
            <button class="custom-btn dropdown-toggle" type="button" data-toggle="dropdown">
               {{auth()->user()->name}}
                <i class="fa fa-angle-down pro-ico"></i>
            </button>
            <ul class="dropdown-menu profile-dropdown">
                <div class="heading">
                    <h3></h3>
                </div>
                <ul>
                    <li>
                        <form action="{{route('logout')}}" method="post">
                            @csrf
                            <button type="submit" class=" form-group btn btn-primary">
                                logout
                            </button>
                        </form>
                    </li>
                </ul>
            </ul>
        </div>
    </ul>
</div>