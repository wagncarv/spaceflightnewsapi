defmodule Test do
    alias Spaceflightnewsapi.{Article, Event, Launch, Repo}
    alias Spaceflightnewsapi.Articles.Create, as: ArticleCreate
    alias Spaceflightnewsapi.Launches.Create, as: LaunchCreate
    alias Spaceflightnewsapi.Events.Create, as: EventCreate
    alias Spaceflightnewsapi.Client.Client
    # import Ecto.Changeset
    use Ecto.Schema
    alias Spaceflightnewsapi.Routines.Routine
    alias Spaceflightnewsapi.Articles.Show
    alias Spaceflightnewsapi.Articles.Get
    alias Spaceflightnewsapi.Helpers.Helper

    def keys(%{"events" => events, "launches" => launches} = param) do
      events ++ launches
      |> Enum.filter(fn e -> Map.has_key?(e, "id") end)
      |> Enum.map(fn e -> e["id"] end)

    end

    def test do
      params = %{
        "events" => [%{"id" => 7, "provider" => " event event"}],
        "featured" => true,
        "id" => "14",
        "image_url" => "http://www.url.com.br/images/icon.png",
        "launches" => [%{"id" => 10, "provider" => "provider launch launch 2"}],
        "news_site" => "http://www.url.com.br",
        "published_at" => "2021-12-04T22:56:18Z",
        "summary" => "Nova mensagem",
        "title" => "Novo titulo",
        "url" => "http://www.url.com.br"
      } |> keys()


      # article = %Article{
      #   __meta__: "",
      #   events: [
      #     %Spaceflightnewsapi.Event{
      #       __meta__: "#Ecto.Schema.Metadata<:loaded, events",
      #       article: "Ecto.Association.NotLoaded<association :article is not loaded",
      #       article_id: 14,
      #       id: 6,
      #       provider: " event event"
      #     }
      #   ],
      #   featured: true,
      #   id: 14,
      #   image_url: "http",
      #   inserted_at: ~N[2021-12-04 21:45:11],
      #   launches: [
      #     %Launch{
      #       __meta__: "#Ecto.Schema.Metadata<:loaded, "launches",
      #       article: "Ecto.Association.NotLoaded<association :article is not loaded",
      #       article_id: 14,
      #       id: 10,
      #       provider: "provider launch launch 2"
      #     }
      #   ],
      #   news_site: "",
      #   published_at: ~U[2021-12-04 23:09:29Z],
      #   summary: "Nova mensagem",
      #   title: "Novo titulo",
      #   updated_at: ~N[2021-12-04 23:09:29],
      #   url: "htt"
      # }




    end
end
