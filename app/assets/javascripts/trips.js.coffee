# $(document).ready -> 
#   if $('#add_stop').click
#     $('#stops').append("<div><%= ff.label :stop2%><br/><%=ff.text_field :stop2 %></div>")
$(document).ready ->
  $('#remove_link').click ->
    alert ("it works")