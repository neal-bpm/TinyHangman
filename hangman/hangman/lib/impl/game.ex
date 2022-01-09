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

end
