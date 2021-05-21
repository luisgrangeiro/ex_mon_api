defmodule ExMon.PokeApi.Client do
    use Tesla

    plug Tesla.Middleware.BaseUrl, "https://pokeapi.co/api/v2"
    plug Tesla.Middleware.JSON

    def get_pokemon(name) do
        "/pokemon/#{name}"
        |> get()
    end
end