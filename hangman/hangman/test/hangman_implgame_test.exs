defmodule HangmanImplGameTest do
  use ExUnit.Case
  alias Hangman.Impl.Game

  test "new game returns structure" do
    game = Game.new_game()
    assert game.turns_left == 7
    assert game.game_state == :initializing
    assert length(game.letters) > 0
  end

  test "new game returns correct word" do
    game = Game.new_game("wombat")
    assert game.turns_left == 7
    assert game.game_state == :initializing
    assert game.letters == ~w[w o m b a t]

  end
  test "check each element of the new game letters list in a lower-case ASCII" do
    game = Game.new_game("wombat")
    assert game.letters |> Enum.all?(fn element -> Regex.match?(~r/[a-z]/, element) end)
  end


end
