defmodule ExMon.Pokemon.Get do
    alias ExMon.Pokemon.Client
    alias ExMon.Pokemon

    def call(name) do
        name
        |> Client.get_pokemon()
        |> handle_response()
    end

    defp handle_response({:ok, body}), do: {:ok, Pokemon.build(body)}
    defp handle_response({:error, _reaseon} = error), do: error
end