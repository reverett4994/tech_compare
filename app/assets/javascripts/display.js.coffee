jQuery ->
  $(".auto").autocomplete 
    source: $(".auto").data('autocomplete-source')
  $("#review_preview").click ->
    $("#reviews").fadeToggle()  
  $("#show_specs").click ->
    $("#show_table").fadeToggle()   
  $("#show_specs").click ->
    $(".show_image").fadeToggle()

    

