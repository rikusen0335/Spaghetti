defmodule DiscordBot do
  use Nostrum.Consumer

  alias Nostrum.Api
  alias DiscordBot.{Command}

  def start_link do
    Consumer.start_link(__MODULE__)
  end

  def handle_event({:MESSAGE_CREATE, message, _ws_state}) do
    Command.handle(message)
  end

  def handle_event({:VOICE_STATE_UPDATE, message, state}) do
    IO.inspect(message)
    IO.inspect("")
    IO.inspect(Api.get_channel(message.channel_id))
  end

  def handle_event(_event) do
    :noop
  end
end
