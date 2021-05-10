defmodule ExMonWeb.TrainersController do
    use ExMonWeb, :controller

    def create(conn, params) do
        params
        |> ExMon.create_trainer()
        |> handle_reponse(conn)
    end

    defp handle_response({:ok, trainer}, conn) do
        conn
        |> put_status(:ok)
        |> render("create.json", trainer: trainer) #Passa para a view o trainer
    end
end