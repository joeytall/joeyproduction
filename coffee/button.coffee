$ ->
  $("#menu-toggle").click (e) ->
    e.preventDefault()
    $("#wrapper").toggleClass "active"
    $(@).toggleClass "hidden"

  $("#jp-left").click (e) ->
    e.preventDefault()
    toggle_sidebar()

  $("#profile-btn").click () ->
    toggle_selected($(@))
    $(".profile").removeClass "hidden"

  $("#resume-btn").click () ->
    toggle_selected($(@))
    $(".resume").removeClass "hidden"

  $("#smth-btn").click () ->
    toggle_selected($(@))
    $(".work").removeClass "hidden"

  toggle_selected = (btn) ->
    toggle_sidebar()
    menu = $(".secondary-menu")
    menu.children().removeClass "selected"
    btn.children().addClass "selected"
    contents = $(".page-content")
    contents.children().addClass "hidden"

  toggle_sidebar = () ->
    if $("#wrapper").hasClass "active"
      $("#wrapper").toggleClass "active"
      $("#menu-toggle").toggleClass "hidden"
