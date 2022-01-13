defmodule Dictionary.Runtime.Server do

  @type t :: pid()
  @me __MODULE__
  alias Dictionary.Impl.Wordlist


  def start_link() do
    Agent.start_link(&Wordlist.word_list/0, name: @me)
  end

  def random_word() do
    Agent.get(@me , &Wordlist.random_word/1)
  end

end
