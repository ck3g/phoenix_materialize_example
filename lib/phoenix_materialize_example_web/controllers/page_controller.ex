defmodule PhoenixMaterializeExampleWeb.PageController do
  use PhoenixMaterializeExampleWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
