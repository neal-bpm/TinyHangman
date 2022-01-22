defmodule Hangman do

  alias Hangman.Type


  @opaque game  :: Game.t
  @spec new_game() :: game
  def new_game() do
    { :ok, pid} = Hangman.Runtime.Application.start_game()
    pid
  end


  def make_move(game, guess) do
    GenServer.call(game, {:make_move, guess})
  end

  @spec tally(game) :: Game.t
  def tally(game) do
    GenServer.call(game, {:tally})
  end

end
