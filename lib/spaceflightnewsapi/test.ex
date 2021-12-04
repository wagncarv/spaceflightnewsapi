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

    def test do
    value =  %{
    "id" => 0,
    "featured" => false,
    "title" => "titulo",
    "url" => "http://www.url.com.br",
    "imageUrl" => "http://www.url.com.br/images/icon.png",
    "newsSite" => "http://www.url.com.br",
    "summary" => "mensagem",
    "publishedAt" => "string",
    "launches" => [
      %{
        "id" => 123,
        "provider" => "provider launch"
      }
    ],
    "events" => [
      %{
        "id" => 12,
        "provider" => "provider event"
      }
    ]
  }

  Helper.format_keys(value)
#   Helper.format("imageUrl")
# pattern = Regex.run(~r/[A-Z]/, "imageurl")
# |> List.first() |> IO.inspect(label: "RESULT")




    end
end
