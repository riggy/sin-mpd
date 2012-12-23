$ ->
  $(document).on('click', '.mpd-actions a', (event) ->
    $.post "/mpd/playback/#{$(@).attr('rel')}"
  )