$(document).on 'turbolinks:load', ->
  $('.new_book').hide()
  $('body').on 'click', '#add_book', ->
    $('.new_book').slideDown()
    false
  $('.new_book').on 'ajax:success', ->
    console.log 'Book created via AJAX'
  $('table').on 'ajax:success', '.destroy_book', ->
    $(this).closest('tr').remove()
    false
