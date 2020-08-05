defmodule IoelixirWeb.PageController do
  use IoelixirWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
