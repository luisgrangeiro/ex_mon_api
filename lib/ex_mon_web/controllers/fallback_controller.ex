defmodule ExMonWeb.FallbackController do
    use ExMonWeb, :controller

    def call(con, {:error, result}) do
        con
        |> put_status(:bad_request)
        |> put_view(ExMonWeb.ErrorView)
        |> render("400.json", result: result)
    end
end