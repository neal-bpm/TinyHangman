defmodule Hangman.Type do

  @type state :: :initializing | :won | :lost | :good_guess | :bad_guess | :already_used

end
