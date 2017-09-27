defmodule CatcastWeb.PageController do
  use CatcastWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
