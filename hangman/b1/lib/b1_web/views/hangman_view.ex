defmodule B1Web.HangmanView do
  use B1Web, :view

  def figure_for(0) do
    ~s{
       __
      |  |
      o  |
     /|\\ |
     / \\ |
         |
         |
     ======
    }
  end

  def figure_for(1) do
    ~s{
       __
      |  |
      o  |
     /|\\ |
     /    |
         |
         |
     ======
    }
  end

  def figure_for(2) do
    ~s{
       __
      |  |
      o  |
     /|\\ |
          |
         |
         |
     ======
    }
  end

  def figure_for(3) do
    ~s{
       __
      |  |
      o  |
     /|  |
         |
         |
         |
     ======
    }
  end

  def figure_for(4) do
    ~s{
       __
      |  |
      o  |
      |  |
         |
         |
         |
     ======
    }
  end

  def figure_for(5) do
    ~s{
       __
      |  |
      o  |
         |
         |
         |
         |
     ======
    }
  end

  def figure_for(6) do
    ~s{
       __
      |  |
         |
         |
         |
         |
         |
     ======
    }
  end

  def figure_for(7) do
    ~s{
       __
      |  |
         |
         |
         |
         |
         |
     ======
    }
  end

end
