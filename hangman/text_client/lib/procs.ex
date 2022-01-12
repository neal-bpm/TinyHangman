defmodule Procs do

  def hello do
    receive do
      message ->
        IO.puts ("Hello #{message}")
    end
    hello()
  end
end
