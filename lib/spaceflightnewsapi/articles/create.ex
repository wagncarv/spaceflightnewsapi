defmodule Spaceflightnewsapi.Articles.Create do
    use Ecto.Schema
    alias Spaceflightnewsapi.{Article, Repo}

    def call(params) do
        params
        |> Article.changeset()
        |> Repo.insert()
        # |> handle_insert()
    end

    # defp handle_insert({:ok, %Article{}} = result), do: result
end
