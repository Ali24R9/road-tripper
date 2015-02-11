$ ->
  $()
  $('#add_field').click 'event', -> 
    event.preventDefault()

    total_fields = parseInt($('#add_field').data('fields')) + 1
    total_fields = total_fields.toString()

    $('#stops').append("<br/><input id='trip_stops_attributes_#{total_fields}_location' name='trip[stops_attributes][#{total_fields}][location]' type='text'>")

    $('#add_field').data('fields', total_fields)
    alert $('#add_field').data('fields')