$ ->
  $(".content").hide()
  $(".mainPage").show()

  $(window).scroll ->
    offset = 220
    duration = 500
    if $(@).scrollTop() > offset
      $(".back-to-top").fadeIn duration
    else
      $(".back-to-top").fadeOut duration
    return

  $(".back-to-top").click (e) ->
    e.preventDefault()
    $("html, body").animate
      scrollTop: 0
    , 500
    false

  $("#menu-toggle").click (e) ->
    e.preventDefault()
    $("#wrapper").toggleClass "active"
    $(@).toggleClass "hidden"

  $("#jp-left").click (e) ->
    toggle_sidebar()

  $(".page").click () ->
    toggle_selected($(@))

  toggle_selected = (btn) ->
    toggle_sidebar()
    menu = $(".secondary-menu")
    menu.children().removeClass "selected"
    btn.children().addClass "selected"

    page = btn.data("page")
    $(".currentPage").fadeOut "normal", ->
      $(@).removeClass "currentPage"
      $(".#{page}").fadeIn "normal", ->
        $(@).addClass "currentPage"

  toggle_sidebar = () ->
    if $("#wrapper").hasClass "active"
      $("#wrapper").toggleClass "active"
      $("#menu-toggle").toggleClass "hidden"
