defmodule HelloPhoenix.PageController do
  use HelloPhoenix.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def abc(conn, _params) do
    task = Task.start(fn -> do_some_work("start") end)
    task = Task.async(fn -> do_some_work("async") end)

    render conn, "index.html"

  end

  defp do_some_work(message) do
    raise message
  end

  defp do_some_other_work() do
    :timer.sleep(:timer.seconds(1))
  end
  
end
