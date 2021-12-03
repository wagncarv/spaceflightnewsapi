defmodule Spaceflightnewsapi.Articles.Create do
    use Ecto.Schema
    alias Spaceflightnewsapi.Repo

    def call(params) do
        IO.inspect(params)
        Repo.transaction fn ->
        article = Repo.insert!(params) |> IO.inspect(label: "POST ==")

        # Ecto.build_assoc(article, :events, params.events)
        # |> Repo.insert!()

        # Ecto.build_assoc(article, :launches, params.launches)
        # |> Repo.insert!()
        end
    end
end
