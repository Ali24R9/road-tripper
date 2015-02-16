$ ->
  $()
  $('#add_field').click 'event', -> 
    event.preventDefault()

    total_fields = parseInt($('#form-fields').data('fields')) + 1
    total_fields = total_fields.toString()

    $('.inputs').append("<br/><input id='trip_stops_attributes_#{total_fields}_location' name='trip[stops_attributes][#{total_fields}][location]' type='text'>")

    $('#form-fields').data('fields', total_fields)

  $('#remove_field').click 'event', -> 
    event.preventDefault()

    $('.inputs input').last().remove()

    total_fields = $('#form-fields').data('fields')
    total_fields = parseInt(total_fields) 
    total_fields -= 1
    $('#form-fields').data('fields', total_fields.toString())
