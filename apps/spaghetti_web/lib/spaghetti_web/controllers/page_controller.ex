defmodule SpaghettiWeb.PageController do
  use SpaghettiWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
