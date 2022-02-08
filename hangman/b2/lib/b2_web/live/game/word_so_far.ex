defmodule B2Web.Live.Game.WordSoFar do

  use B2Web, :live_component

  @states %{
    initializing: "Guess the word, a letter a time",
    good_guess:   "Good Guess",
    bad_guess:    "Sorry, that's a bad guess",
    won:          "You WON!!!",
    lost:         "Sorry, you lost",
    already_used: "You aleady used that letter"
  }

  def mount(socket) do
    { :ok, socket}
  end

  defp state_name(state) do
    @states[state] || "Unknown state"
  end

  def render(assigns) do
    ~H"""
    <div class="word-so-far">
      <div class="game-state">
        <%= state_name(@tally.game_state) %>
      </div>
      <div class="letters">
        <%= for ch <- @tally.letters do %>
          <% cls = if ch != "_", do: "one-letter correct", else:  "one-letter" %>
            <div class={cls}>
              <%= ch %>
            </div>
        <% end %>
      </div>
    </div>
    """
  end
end
