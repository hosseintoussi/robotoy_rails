App.robotoy = App.cable.subscriptions.create {channel: "RobotoyChannel", id: Math.floor(1000 + Math.random() * 9000) },
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    $('#results').append "<p>#{data}</p>"

  play: (command)->
    @perform 'play', command: command
