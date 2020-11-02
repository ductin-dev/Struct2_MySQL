<script src="${pageContext.request.contextPath}/template/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="${pa}js/vendor/jquery-1.11.2.min.js"><\/script>')</script>

<script src="${pageContext.request.contextPath}/template/js/vendor/bootstrap.min.js"></script>

<script src="${pageContext.request.contextPath}/template/js/plugins.js"></script>

<script>
    jQuery(document).ready(function($) {

        'use strict';


        $(".Modern-Slider").slick({
            autoplay:true,
            speed:1000,
            slidesToShow:1,
            slidesToScroll:1,
            pauseOnHover:false,
            dots:true,
            fade: true,
            pauseOnDotsHover:true,
            cssEase:'linear',
            // fade:true,
            draggable:false,
            prevArrow:'<button class="PrevArrow"></button>',
            nextArrow:'<button class="NextArrow"></button>',
        });

        $('#nav-toggle').on('click', function (event) {
            event.preventDefault();
            $('#main-nav').toggleClass("open");
        });


        $('.tabgroup > div').hide();
        $('.tabgroup > div:first-of-type').show();
        $('.tabs a').click(function(e){
            e.preventDefault();
            var $this = $(this),
                tabgroup = '#'+$this.parents('.tabs').data('tabgroup'),
                others = $this.closest('li').siblings().children('a'),
                target = $this.attr('href');
            others.removeClass('active');
            $this.addClass('active');
            $(tabgroup).children('div').hide();
            $(target).show();

        })



        $(".box-video").click(function(){
            $('iframe',this)[0].src += "&amp;autoplay=1";
            $(this).addClass('open');
        });

        $('.owl-carousel').owlCarousel({
            loop:true,
            margin:30,
            responsiveClass:true,
            responsive:{
                0:{
                    items:1,
                    nav:true
                },
                600:{
                    items:2,
                    nav:false
                },
                1000:{
                    items:3,
                    nav:true,
                    loop:false
                }
            }
        })

        var contentSection = $('.content-section, .main-banner');
        var navigation = $('nav');

        $('.button a[href*=#]').on('click', function(e) {
            e.preventDefault();
            $('html, body').animate({ scrollTop: $($(this).attr('href')).offset().top -0 }, 500, 'linear');
        });


    });
</script>

<script>
    // Hide Header on on scroll down
    var didScroll;
    var lastScrollTop = 0;
    var delta = 5;
    var navbarHeight = $('header').outerHeight();

    $(window).scroll(function(event){
        didScroll = true;
    });

    setInterval(function() {
        if (didScroll) {
            hasScrolled();
            didScroll = false;
        }
    }, 250);

    function hasScrolled() {
        var st = $(this).scrollTop();

        // Make sure they scroll more than delta
        if(Math.abs(lastScrollTop - st) <= delta)
            return;

        // If they scrolled down and are past the navbar, add class .nav-up.
        // This is necessary so you never see what is "behind" the navbar.
        if (st > lastScrollTop && st > navbarHeight){
            // Scroll Down
            $('header').removeClass('nav-down').addClass('nav-up');
        } else {
            // Scroll Up
            if(st + $(window).height() < $(document).height()) {
                $('header').removeClass('nav-up').addClass('nav-down');
            }
        }

        lastScrollTop = st;
    }
</script>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js" type="text/javascript"></script>

<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.22/js/jquery.dataTables.js"></script>

<script src="https://cdn.ckeditor.com/ckeditor5/22.0.0/classic/ckeditor.js"></script>
<script>
    ClassicEditor
        .create( document.querySelector( '#editor' ) )
        .catch( error => {
            console.error( error );
        } );
</script>

<!-- Custom -->
<script>
    $(document).ready( function () {
        $('#blogTable').DataTable();
    } );
</script>
<script>
   window.onload=function(){
       var x=document.title;
       if (x==="LifeBlog | Home"){
           document.getElementById("nav1").style.width="25px";
       }

       if (x==="LifeBlog | Blog"||x==="LifeBlog | ViewBlog"){
           document.getElementById("nav2").style.width="25px";
       }

       if (x==="LifeBlog | CV"){
           document.getElementById("nav3").style.width="25px";
       }

       if (x==="LifeBlog | Certification"){
           document.getElementById("nav4").style.width="25px";
       }

       if (x==="LifeBlog | Admin"){
           document.getElementById("nav5").style.width="25px";
       }

       if (x==="LifeBlog | Credit"){
           document.getElementById("nav6").style.width="25px";
       }
   }
</script>
