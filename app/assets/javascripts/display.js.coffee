ready = ->
	jQuery ->
	  $(".show_image").addClass('big')	
	  $(".auto").autocomplete 
	    source: $(".auto").data('autocomplete-source')
	  $("#review_preview").click ->
	    $("#reviews").fadeToggle()  
	  $("#show_specs").click ->
	    $("#show_table").fadeToggle()   
	  $("#show_specs").click ->
	    if $(".show_image").hasClass('big') 
	     $(".show_image").toggleClass('big')
	     $(".show_image").animate {width:600}, 2000
	    else
	     $(".show_image").toggleClass('big')
	     $(".show_image").animate {width:1000}, 2000
	  $("#review_preview").click ->
	  	$('html, body').animate({
         scrollTop: $("#reviews").offset().top
        }, 2000);

myFunction = ->
  x = document.getElementById('myTopnav')
  if x.className == 'topnav'
    x.className += ' responsive'
  else
    x.className = 'topnav'
  return
 
#$(document).ready(ready)
#$(document).on('page:load', ready)

#USE THIS LINE TO GET PAGE TO LOAD JAVA EVERYTIME 
$(document).on 'turbolinks:load', ->
 ready() 
 myFunction()

