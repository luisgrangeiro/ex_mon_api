defmodule ExMonWeb.WecomeController do
    use ExMonWeb, :controller

    def index(conn, _params) do
        text(conn, "Welcome to the ExMon Api!")
    end
end