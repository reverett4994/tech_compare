jQuery ->
  $(".auto").autocomplete 
    source: $(".auto").data('autocomplete-source')