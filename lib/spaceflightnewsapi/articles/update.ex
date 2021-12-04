defmodule Spaceflightnewsapi.Articles.Update do
    alias Spaceflightnewsapi.{Article, Error, Repo}

    def call(%{"id" => id} = params) do
        case Repo.get(Article, id) do
        nil -> {:error, Error.build(404, "Article not found")}
        user -> do_update(user, params)
        end
    end

    defp do_update(article, params) do
        article
        |> Article.changeset(params)
        |> Repo.update()
    end

end
