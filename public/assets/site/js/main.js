/* JS
================================*/
$(document).ready(function () {
    "use strict";
    $(".news-slid").owlCarousel({
        loop: false,
        nav: true,
        dots: false,
        smartSpeed: 2000,
        autoplayHoverPause: true,
        margin: 35,
        navText: ["<i class='fas fa-long-arrow-alt-left'></i>", "<i class='fas fa-long-arrow-alt-right'></i>"],
        autoplay: true,
        responsive: {
            0: {
                items: 1
            },
            420: {
                items: 1
            },
            767: {
                items: 2
            },
            992: {
                items: 3
            }
        }
    });
    $(".news-ar-slid").owlCarousel({
        loop: false,
        nav: true,
        dots: false,
        smartSpeed: 2000,
        rtl: true,
        autoplayHoverPause: true,
        margin: 35,
        navText: ["<i class='fas fa-long-arrow-alt-left'></i>", "<i class='fas fa-long-arrow-alt-right'></i>"],
        autoplay: true,
        responsive: {
            0: {
                items: 1
            },
            420: {
                items: 1
            },
            767: {
                items: 2
            },
            992: {
                items: 3
            }
        }
    });
    $('.popup-youtube').magnificPopup({
        disableOn: 700,
        type: 'iframe',
        mainClass: 'mfp-fade',
        removalDelay: 10,
        preloader: true,
        fixedContentPos: false
    });
});