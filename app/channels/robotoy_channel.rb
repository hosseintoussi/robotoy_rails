# Be sure to restart your server when you modify this file. Action Cable runs in a loop that does not support auto reloading.
class RobotoyChannel < ApplicationCable::Channel
  def subscribed
    stream_from "robotoy_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def play(data)
    ActionCable.server.broadcast 'robotoy_channel', data['command']
  end
end
