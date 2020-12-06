defmodule DiscordBot.Command do
  alias Nostrum.Api

  alias DiscordBot.Help

  @command_prefix "/spa"

  defp actionable_command?(message) do
    if message.author.bot == nil do
      true
    end
  end

  def handle(message) do
    if actionable_command?(message) do
      message.content
      |> String.trim()
      |> String.split()
      |> execute(message)
    end
  end

  def execute(["うんこ"], message) do
    Api.create_message(message, "💩")
  end

  def execute(["うるさい"], message) do
    Api.create_message(message, "おまえもうるさい")
  end

  def execute(["すいません"], message) do
    Api.create_message(message, "す「み」ませんだろォ？！？！？")
  end

  def execute(["すみません"], message) do
    Api.create_message(message, "許す")
  end

  def execute([@command_prefix, "ping"], message) do
    Api.create_message(message, "pong!")
  end

  # If play wrong command
  def execute([@command_prefix], message), do: Help.help(message)
  # def execute([@command_prefix, _], message), do: Help.help(message)
  def execute(_, _message), do: :ignore
end
