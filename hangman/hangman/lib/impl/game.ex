defmodule Hangman.Impl.Game do

  alias Hangman.Type

  @type t :: %Hangman.Impl.Game{
    turns_left: integer,
    game_state: Type.state,
    letters: list(String.t),
    used: MapSet.t(String.t)
  }

  defstruct(
    turns_left: 7,
    game_state: :initializing,
    letters: [],
    used:    MapSet.new()
  )

  def new_game() do
    new_game(Dictionary.random_word)
  end

  def new_game(words) do
    %__MODULE__{
      letters: words |> String.codepoints()
    }
  end

  def make_move(game = %{ game_state: state}, _guess)
    when state in [:won, :lost] do
      { game, tally(game)}
  end

  defp tally(game) do
    %{
      turns_left: game.turns_left,
      game_state: game.game_state,
      letters: [],
      used: game.used |> MapSet.to_list |> Enum.sort,
    }
  end
end
