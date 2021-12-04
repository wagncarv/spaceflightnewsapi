defmodule Spaceflightnewsapi.Articles.Update do
    alias Spaceflightnewsapi.{Article, Error, Repo}
    use Ecto.Schema
    import Ecto.Changeset

    def call(%{"id" => id} = params) do
        case Repo.get(Article, id) do
        nil -> {:error, Error.build(404, "Article not found")}
        article -> do_update(article, params)
        end
    end

    defp do_update(article, params) do
        IO.inspect(article, label: "ARTICLE LN 14 , UPDATE")
        IO.inspect(params, label: "PARAMS LN 14 , UPDATE")
        article
        |> Repo.preload([:events, :launches]) |> IO.inspect(label: "ARTICLE LOADED")
        |> Article.changeset(params) |> IO.inspect(label: "ARTICLE LOADED")
        |> cast_assoc(:events) #TODO
        |> cast_assoc(:launches)
        |> Repo.update()
        |> IO.inspect(label: "RESULT =========")
    end

    defp get_assoc_keys(map) do
        assoc_keys = ["events", "launches"]
        

    end

end

# PARAMS LN 14 , UPDATE: %{
#     "events" => [%{"id" => 7, "provider" => " event event"}],
#     "featured" => true,
#     "id" => "14",
#     "image_url" => "http://www.url.com.br/images/icon.png",
#     "launches" => [%{"id" => 10, "provider" => "provider launch launch 2"}],
#     "news_site" => "http://www.url.com.br",
#     "published_at" => "2021-12-04T22:56:18Z",
#     "summary" => "Nova mensagem",
#     "title" => "Novo titulo",
#     "url" => "http://www.url.com.br"
#   }


# ARTICLE LOADED: %Spaceflightnewsapi.Article{
#     __meta__: #Ecto.Schema.Metadata<:loaded, "articles">,
#     events: [
#       %Spaceflightnewsapi.Event{
#         __meta__: #Ecto.Schema.Metadata<:loaded, "events">,
#         article: #Ecto.Association.NotLoaded<association :article is not loaded>,
#         article_id: 14,
#         id: 6,
#         provider: " event event"
#       }
#     ],
#     featured: true,
#     id: 14,
#     image_url: "http://www.url.com.br/images/icon.png",
#     inserted_at: ~N[2021-12-04 21:45:11],
#     launches: [
#       %Spaceflightnewsapi.Launch{
#         __meta__: #Ecto.Schema.Metadata<:loaded, "launches">,
#         article: #Ecto.Association.NotLoaded<association :article is not loaded>,
#         article_id: 14,
#         id: 10,
#         provider: "provider launch launch 2"
#       }
#     ],
#     news_site: "http://www.url.com.br",
#     published_at: ~U[2021-12-04 23:09:29Z],
#     summary: "Nova mensagem",
#     title: "Novo titulo",
#     updated_at: ~N[2021-12-04 23:09:29],
#     url: "http://www.url.com.br"
#   }
