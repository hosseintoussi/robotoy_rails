# Be sure to restart your server when you modify this file. Action Cable runs in a loop that does not support auto reloading.
class RobotoyChannel < ApplicationCable::Channel
  def subscribed
    stream_from "robotoy_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def play(data)
    return if data['command'].blank?
    begin
      @game ||= Robotoy::Game.new
      set_params(data['command'])
      @game.perform(@method, @args)
      result = @game.perform(:report, [:string])
    rescue => e
      result = e.message
    end
    ActionCable.server.broadcast 'robotoy_channel', result
  end

  private

  def set_params(command)
    splitted = command.split(/\s+/)
    @method = splitted[0].strip
    @args = splitted[1] ? splitted[1].split(',').map(&:strip) : []
  end
end
