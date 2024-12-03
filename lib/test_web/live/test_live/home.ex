defmodule TestWeb.TestLive.Home do
  use TestWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, socket, layout: false}
  end

  def handle_event("custom", _unsigned_params, socket) do
    socket =
      socket
      |> push_event("event", %{})

    {:noreply, socket}
  end
end
