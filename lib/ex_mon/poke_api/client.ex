defmodule ExMon.PokeApi.Client do
    use Tesla

    plug Tesla.Middleware.BaseUrl, "https://pokeapi.co/api/v2"
    plug Tesla.Middleware.JSON

    def get_pokemon(name) do
        "/pokemon/#{name}"
        |> get()
        |> handle_get()
    end

    defp handle_get({:ok, %Tesla.En{status: 200, body: body}}), do: {:ok, body}
    defp handle_get({:ok, %Tesla.En{status: 404}}), do: {:error, "Pokemon not found!"}
    defp handle_get({:error, _reason}}), do: :error
end