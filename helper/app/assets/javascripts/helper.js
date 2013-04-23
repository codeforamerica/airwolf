$(function() {
  		// $("[rel='popover']").popover();
  		$('.nav li a').click(function(){
  			activeStyle($(this).attr('href'));
  		});

		// fix the top nav bar on scroll
	    var $win = $(window)
	      , $nav = $('.subnav')
	      , navTop = $('.subnav').length && $('.subnav').offset().top
	      , isFixed = 0;
	      // this scrolling function only vaguely works. Need to figure out this offset business
	    $win.scroll(function() {
	    	var top = $win.scrollTop();
	    	//change the styling
	    	activeStyle();

	    	var topBuffer = $win.scrollTop() -80
	      if ($win.scrollTop() > navTop && !isFixed) {
	      	isFixed = 1
	        $nav.addClass('subnav-fixed')
          $('.navbar').stop().animate();
	      } else if ($win.scrollTop() < navTop && isFixed){
	      	isFixed = 0
	        $nav.removeClass('subnav-fixed')
          $('html,body').stop().animate({
	              marginTop: 0
	        });
	      }
	    });
		});

	//changes the styling of the active nav element (based on spy-scroll)
	function activeStyle(activeEl) {
		!activeEl ? activeEl=$('.navbar-inverse li.active').children('a').attr('href'):activeEl=activeEl;
		$('.stepRow').css('color','#ccc');
		$('.stepRow h2').css('color','#ccc');
  	$('.stepRow .span8').css({
  		'border-left':'6px solid #fff'
  	});
  	
  	$(activeEl).css('color','#000');
  	$(activeEl+' h2').css('color','#444');
  	$(activeEl+' .span8').css({
  		'border-left':'6px solid #399fd3'
  	});
	}