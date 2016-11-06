App.robotoy = App.cable.subscriptions.create "RobotoyChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    $('#results').append "<p>#{data}</p>"

  play: (command)->
    @perform 'play', command: command
