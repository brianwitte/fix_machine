defmodule FixMachineWeb.PageController do
  use FixMachineWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
