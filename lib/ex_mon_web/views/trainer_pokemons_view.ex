defmodule ExMonWeb.TrainerPokemonsView do
  use ExMonWeb, :view

  alias ExMon.Trainer.Pokemon

  def render("create.json", %{pokemon: %Pokemon{id: id, name: name, inserted_at: inserted_at, nickname: nickname, types: types, weight: weight, trainer_id: trainer_id}}) do
      %{
          message: "Pokemon Created!",
          pokemon: %{
              id: id,
              name: name,
              inserted_at: inserted_at,
              nickname: nickname,
              types: types,
              weight: weight,
              trainer_id: trainer_id
          }
      }
  end

  def render("show.json", %{
        pokemon: %Pokemon{
            id: id,
            name: name,
            inserted_at: inserted_at,
            nickname: nickname,
            types: types,
            weight: weight,
            trainer: %{id: trainer_id, name: trainer_name}
        }
    }) do
    %{
        pokemon: %{
            id: id,
            name: name,
            inserted_at: inserted_at,
            nickname: nickname,
            types: types,
            weight: weight,
            trainer: %{trainer_id: trainer_id, name: trainer_name}
        }
    }
end
end
