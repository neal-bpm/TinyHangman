defmodule Hangman do
  alias Hangman.Impl.Game

  @opaque game  :: Game.t
  defdelegate new_game(), to:  Game


  def make_move(game, guess) do
  end

end
