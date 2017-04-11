$(document).ready ->
  $('body').on 'click', 'h1', ->
    alert 'CLICKED'
    return
  $('body').on 'click', '#list_toggle', (e) ->
    list = $('.user_list')
    list.slideToggle()
    text = $(e.target).text()
    text = if text == 'Hide' then 'Show' else 'Hide'
    $(e.target).text text
    false
  return
