defmodule HelloPhoenix.PageController do
  use HelloPhoenix.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def abc(conn, _params) do
    task = Task.async(fn -> do_some_work() end)
    res  = do_some_other_work()
    Task.await(task)

    render conn, "index.html"

  end

  defp do_some_work() do
    raise "abc another error"
  end

  defp do_some_other_work() do
    :timer.sleep(:timer.seconds(1))
  end
  
end
