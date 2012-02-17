jQuery.noConflict()(function($){
jQuery("#switcher-reset").click(function(){
  		
		var bodycolor = "777777";
		jQuery('body').css({
			"color": '#' + bodycolor
		});     
		jQuery.cookie("soul_cookie_color-text", bodycolor);
		
		var headercolor = "444444";
		jQuery('h1, h2, h3, h4, h5, h6').css({
			"color": '#' + headercolor
		});     
		jQuery.cookie("soul_cookie_color-headers", headercolor);
		
		var bodybgcolor = "f1f1f1";
		jQuery('body').css({
			"background-color": '#' + bodybgcolor
		});     
		jQuery.cookie("soul_cookie_color-body", bodybgcolor);

		
		var backgroundUrl = 'url(http://html.orange-idea.com/metric/images/body-bg.jpg)';
		jQuery('body').css({
		  	backgroundImage: backgroundUrl,
		  	backgroundRepeat: "repeat"
	  	});
		jQuery.cookie("soul_cookie_defaultBg-body",backgroundUrl);
		
		var linkcolor = "ff9900";
		jQuery('.link, .colored, .current').css({
			"color": '#' + linkcolor
		});     
		jQuery.cookie("soul_cookie_color-text-links", linkcolor);
		
		var linkcolor = "000000";
		jQuery('.welcome').css({
			"color": '#' + linkcolor
		});     
		jQuery.cookie("soul_cookie_color-text-links", linkcolor);
		
		var bodybgcolor = "ffffff";
		jQuery('.wrapper').css({
			"background-color": '#' + bodybgcolor
		});     
		jQuery.cookie("soul_cookie_color-wrapper", bodybgcolor);
		
		var bodybgcolor = "333333";
		jQuery('.icon-white-big, .icon-white-small').css({
			"background-color": '#' + bodybgcolor
		});     
		jQuery.cookie("soul_cookie_color-icons", bodybgcolor);
		
		var font = "Arial";
		jQuery('body').css({
			"font-family": font
		});     
		jQuery.cookie("soul_cookie_color-fonts", bodybgcolor);
		
		var font = "Yanone Kaffeesatz";
		jQuery('h1, h2, h3, h4, h5, h6').css({
			"font-family": font
		});     
		jQuery.cookie("soul_cookie_color-fonts", bodybgcolor);
  });
         
});

jQuery.noConflict()(function($){
$('#colorpicker-body').ColorPicker({
			onShow: function (colpkr) {
				$(colpkr).fadeIn("fast");
				return false;
			},
			onHide: function (colpkr) {
				$(colpkr).fadeOut("fast");
				return false;
			},
			onChange: function (hsb, hex, rgb) {
        var color = hex;
        var defaultPattern = "url('http://html.orange-idea.com/soul/images/pattern/1px.png')";
        $('body').css({
            backgroundColor: '#' + color,
            backgroundImage : defaultPattern
        });     
        $.cookie("soul_cookie_color-body", color);   
        $.cookie("soul_cookie_pattern-body", null);   
        $.cookie("soul_cookie_defaultBg-body", defaultPattern);   
			},
      color: '#ffffff'
    });
});


jQuery.noConflict()(function($){
$('#colorpicker-wrapper').ColorPicker({
			onShow: function (colpkr) {
				$(colpkr).fadeIn("fast");
				return false;
			},
			onHide: function (colpkr) {
				$(colpkr).fadeOut("fast");
				return false;
			},
			onChange: function (hsb, hex, rgb) {
        var color = hex;
        var defaultPattern = "url('')";
        $('.wrapper').css({
            backgroundColor: '#' + color,
            backgroundImage : defaultPattern
        });     
        $.cookie("soul_cookie_color-wrapper", color);   
        $.cookie("soul_cookie_pattern-wrapper", null);   
        $.cookie("soul_cookie_defaultBg-wrapper", defaultPattern);   
			},
      color: '#ffffff'
    });
});

jQuery.noConflict()(function($){
jQuery('#colorpicker-headers').ColorPicker({
			onShow: function (colpkr) {
				jQuery(colpkr).fadeIn("fast");
				return false;
			},
			onHide: function (colpkr) {
				jQuery(colpkr).fadeOut("fast");
				return false;
			},
			onChange: function (hsb, hex, rgb) {
				
				var headercolor = hex;
				jQuery('h1, h2, h3, h4, h5, h6').css({
					"color": '#' + headercolor
				});     
				jQuery.cookie("soul_cookie_color-headers", headercolor);   
				
			},
      color: '#ffffff'
    });
});

jQuery.noConflict()(function($){
jQuery('#colorpicker-text').ColorPicker({
			onShow: function (colpkr) {
				jQuery(colpkr).fadeIn("fast");
				return false;
			},
			onHide: function (colpkr) {
				jQuery(colpkr).fadeOut("fast");
				return false;
			},
			onChange: function (hsb, hex, rgb) {
				
				var headercolor = hex;
				jQuery('body, .small-italic, .welcome-words').css({
					"color": '#' + headercolor
				});     
				jQuery.cookie("soul_cookie_color-text", headercolor);   
				
			},
      color: '#ffffff'
    });
});

jQuery.noConflict()(function($){
jQuery('#colorpicker-links').ColorPicker({
			onShow: function (colpkr) {
				jQuery(colpkr).fadeIn("fast");
				return false;
			},
			onHide: function (colpkr) {
				jQuery(colpkr).fadeOut("fast");
				return false;
			},
			onChange: function (hsb, hex, rgb) {
				
				var headercolor = hex;
				jQuery('.link, .colored, .current-menu, .button_readmore:hover').css({
					"color": '#' + headercolor
				});     
				jQuery.cookie("soul_cookie_color-text-links", headercolor);   
				
			},
      color: '#ffffff'
    });
});

jQuery.noConflict()(function($){
$('#colorpicker').ColorPicker({
			onShow: function (colpkr) {
				$(colpkr).fadeIn("fast");
				return false;
			},
			onHide: function (colpkr) {
				$(colpkr).fadeOut("fast");
				return false;
			},
			onChange: function (hsb, hex, rgb) {
        var color = hex;
        var defaultPattern = "url('http://html.orange-idea.com/drop/images/icons-white.png')";
        $('.icon-white-big, .icon-white-small').css({
            backgroundColor: '#' + color,
            backgroundImage : defaultPattern
        });     
        $.cookie("soul_cookie_color-icons", color);   
        $.cookie("soul_cookie_pattern-icons", null);   
        $.cookie("soul_cookie_defaultBg-icons", defaultPattern);   
			},
      color: '#ffffff'
    });
});

jQuery.noConflict()(function($){
$('#colorpicker-black').ColorPicker({
			onShow: function (colpkr) {
				$(colpkr).fadeIn("fast");
				return false;
			},
			onHide: function (colpkr) {
				$(colpkr).fadeOut("fast");
				return false;
			},
			onChange: function (hsb, hex, rgb) {
        var color = hex;
        var defaultPattern = "url('http://html.orange-idea.com/soul/images/icons-black.png')";
        $('.icon-black-big, .icon-black-small').css({
            backgroundColor: '#' + color,
            backgroundImage : defaultPattern
        });     
        $.cookie("soul_cookie_color-icons", color);   
        $.cookie("soul_cookie_pattern-icons", null);   
        $.cookie("soul_cookie_defaultBg-icons", defaultPattern);   
			},
      color: '#ffffff'
    });
});

jQuery.noConflict()(function($){
$('#colorpicker-gray').ColorPicker({
			onShow: function (colpkr) {
				$(colpkr).fadeIn("fast");
				return false;
			},
			onHide: function (colpkr) {
				$(colpkr).fadeOut("fast");
				return false;
			},
			onChange: function (hsb, hex, rgb) {
        var color = hex;
        var defaultPattern = "url('http://html.orange-idea.com/soul/images/icons-gray.png')";
        $('.icon-gray-big, .icon-gray-small').css({
            backgroundColor: '#' + color,
            backgroundImage : defaultPattern
        });     
        $.cookie("soul_cookie_color-icons", color);   
        $.cookie("soul_cookie_pattern-icons", null);   
        $.cookie("soul_cookie_defaultBg-icons", defaultPattern);   
			},
      color: '#ffffff'
    });
});


jQuery.noConflict()(function($){
$('#colorpicker-prev').ColorPicker({
			onShow: function (colpkr) {
				$(colpkr).fadeIn("fast");
				return false;
			},
			onHide: function (colpkr) {
				$(colpkr).fadeOut("fast");
				return false;
			},
			onChange: function (hsb, hex, rgb) {
        var color = hex;
        var defaultPattern = "url('http://html.orange-idea.com/svarog/images/icons-white.png')";
        $('.icon').css({
            backgroundColor: '#' + color,
            backgroundImage : defaultPattern
        });     
        $.cookie("soul_cookie_color-icons", color);   
        $.cookie("soul_cookie_pattern-icons", null);   
        $.cookie("soul_cookie_defaultBg-icons", defaultPattern);   
			},
      color: '#ffffff'
    });
});
/*--------------------------------FONT STYLER STARTS--------------------------------*/
jQuery.noConflict()(function($){
$(document).ready(function() {
	$('#body-font').bind('change', function() {
		var font = $(this).val();
		 $('body').css('fontFamily', font);
		 
	});
	});
	});

jQuery.noConflict()(function($){
$(document).ready(function() {
	$('#headings-font').bind('change', function() {
		var font = $(this).val();
		 $('h1, h2, h3, h4, h5, h6').css('fontFamily', font);
		 
	});
	});
	});
	
/***************************************************
			Nivo Slider
***************************************************/
jQuery.noConflict()(function($){
$(document).ready(function() {
            $('#slider').nivoSlider({
                pauseTime:5000,
                pauseOnHover:false
            });        
    });
});
/***************************************************
			SuperFish Menu
***************************************************/	
// initialise plugins
	jQuery.noConflict()(function(){
		jQuery('ul.sf-menu').superfish();
	});

/***************************************************
			PRETTY PHOTO
***************************************************/
jQuery.noConflict()(function($){
$(document).ready(function() {  

$("a[rel^='prettyPhoto']").prettyPhoto({opacity:0.80,default_width:500,default_height:344,theme:'light_rounded',hideflash:false,modal:false});

});
});
/***************************************************
			LIST SLIDER
***************************************************/
jQuery.noConflict()(function($){
		$(document).ready(function() {

			$.featureList(
				$("#tabs li a"),
				$("#output li"), {
					start_item	:	1
				}
			);
		});
});

/***************************************************
			ACCORDION SLIDER
***************************************************/
jQuery.noConflict()(function($){
				$('.kwicks').kwicks({
					max : 900,
					spacing : 0
				});
			});
			
			
/***************************************************
			MOSAIC
***************************************************/
jQuery.noConflict()(function($){
				
				$('.circle').mosaic({
					opacity		:	0.8			//Opacity for overlay (0-1)
				});
				
				$('.fade').mosaic();
				
				$('.bar').mosaic({
					animation	:	'slide'		//fade or slide
				});
				
				$('.bar2').mosaic({
					animation	:	'slide'		//fade or slide
				});
				
				$('.bar3').mosaic({
					animation	:	'slide',	//fade or slide
					anchor_y	:	'top'		//Vertical anchor position
				});
				
				$('.cover').mosaic({
					animation	:	'slide',	//fade or slide
					hover_x		:	'400px'		//Horizontal position on hover
				});
				
				$('.cover2').mosaic({
					animation	:	'slide',	//fade or slide
					anchor_y	:	'top',		//Vertical anchor position
					hover_y		:	'100px'		//Vertical position on hover
				});
				
				$('.cover3').mosaic({
					animation	:	'slide',	//fade or slide
					hover_x		:	'400px',	//Horizontal position on hover
					hover_y		:	'300px'		//Vertical position on hover
				});
		    
		    });			
/***************************************************
			IMAGE HOVER
***************************************************/
jQuery.noConflict()(function($){
$(document).ready(function() {  
            $('.img-preview').each(function() {
                $(this).hover(
                    function() {
                        $(this).stop().animate({ opacity: 0.5 }, 400);
                    },
                   function() {
                       $(this).stop().animate({ opacity: 1.0 }, 400);
                   })
                });
});
});
jQuery.noConflict()(function($){
			$('#slides').slides({
				preload: true,
				generateNextPrev: false
			});
			$('#slides2').slides({
				preload: true,
				generateNextPrev: false,
				generatePagination: true
			});
		});
/***************************************************
			SlideOut
***************************************************/
jQuery.noConflict()(function($){
             $('.slide-out-div').tabSlideOut({
                 tabHandle: '.handle',                              //class of the element that will be your tab
                 pathToTabImage: 'http://html.orange-idea.com/qark-/images/switch1.png',          //path to the image for the tab (optionaly can be set using css)
                 imageHeight: '100px',                               //height of tab image
                 imageWidth: '50px',                               //width of tab image    
                tabLocation: 'left',                               //side of screen where tab lives, top, right, bottom, or left
                 speed: 300,                                        //speed of animation
                 action: 'click',                                   //options: 'click' or 'hover', action to trigger animation
                 topPos: '50px',                                   //position from the top
                 fixedPosition: true                               //options: true makes it stick(fixed position) on scroll
             });
         });
		 


jQuery.noConflict()(function($){
    
    $('#example-1').tipsy();
    
    $('#north').tipsy({gravity: 'n'});
    $('#south').tipsy({gravity: 's'});
    $('#east').tipsy({gravity: 'e'});
    $('#west').tipsy({gravity: 'w'});
    
    $('#auto-gravity').tipsy({gravity: $.fn.tipsy.autoNS});
    
    $('.social').tipsy({fade: true});
	$('.service-tipsy').tipsy({fade: true, gravity: 's'});
    
    $('#example-custom-attribute').tipsy({title: 'id'});
    $('#example-callback').tipsy({title: function() { return this.getAttribute('original-title').toUpperCase(); } });
    $('#example-fallback').tipsy({fallback: "Where's my tooltip yo'?" });
    
    $('#example-html').tipsy({html: true });
    
  });		 
	
	
jQuery.noConflict()(function($){
$(document).ready(function() {
	$('ul#filter a').click(function() {
		$(this).css('outline','none');
		$('ul#filter .current').removeClass('current');
		$(this).parent().addClass('current');
		
		var filterVal = $(this).text().toLowerCase().replace(' ','-');
				
		if(filterVal == 'all') {
			$('ul#portfolio li.hidden').fadeIn('slow').removeClass('hidden');
		} else {
			
			$('ul#portfolio li').each(function() {
				if(!$(this).hasClass(filterVal)) {
					$(this).fadeOut('normal').addClass('hidden');
				} else {
					$(this).fadeIn('slow').removeClass('hidden');
				}
			});
		}
		
		return false;
	});
});
});

jQuery.noConflict()(function($){
$(document).ready(function() {
	$('ul#filter-sidebar a').click(function() {
		$(this).css('outline','none');
		$('ul#filter-sidebar .current').removeClass('current');
		$(this).parent().addClass('current');
		
		var filterVal = $(this).text().toLowerCase().replace(' ','-');
				
		if(filterVal == 'all') {
			$('ul#portfolio li.hidden').fadeIn('slow').removeClass('hidden');
		} else {
			
			$('ul#portfolio li').each(function() {
				if(!$(this).hasClass(filterVal)) {
					$(this).fadeOut('normal').addClass('hidden');
				} else {
					$(this).fadeIn('slow').removeClass('hidden');
				}
			});
		}
		
		return false;
	});
});
});	


jQuery.noConflict()(function($){
	$('#sti-menu').iconmenu({
		animMouseenter	: {
			'mText' : {speed : 400, easing : 'easeOutExpo', delay : 140, dir : -1},
			'sText' : {speed : 400, easing : 'easeOutExpo', delay : 280, dir : -1},
			'icon'  : {speed : 400, easing : 'easeOutExpo', delay : 0, dir : -1}
		},
		animMouseleave	: {
			'mText' : {speed : 400, easing : 'easeInExpo', delay : 140, dir : -1},
			'sText' : {speed : 400, easing : 'easeInExpo', delay : 0, dir : -1},
			'icon'  : {speed : 400, easing : 'easeInExpo', delay : 280, dir : -1}
		}
	});
});

jQuery.noConflict()(function($){
$('#ca-container').contentcarousel();
});
jQuery.noConflict()(function($) {
	$('#va-accordion').vaccordion();
});
/***************************************************
			TABS
***************************************************/
// Activating tabs
jQuery.noConflict()(function($){
	$(document).ready(function() {
		implement_tabs();
	});
});

/***************************************************
			TABLES
***************************************************/
jQuery.noConflict()(function($){
	$("table").tablesorter({debug: true});
});