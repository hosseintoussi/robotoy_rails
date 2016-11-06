$(document).on 'keypress', '#input_command', (event) ->
  if event.keyCode is 13 # return = send
    App.robotoy.play event.target.value
    event.target.value = ''
    event.preventDefault()
