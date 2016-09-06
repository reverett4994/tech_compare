jQuery ->
  $(".auto").autocomplete 
    source: $(".auto").data('autocomplete-source')
  $("#review_preview").click ->
    $("#reviews").fadeToggle(  )  