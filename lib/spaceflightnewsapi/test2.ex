defmodule Test2 do
    alias Spaceflightnewsapi.{Article, Event, Launch, Repo}
    alias Spaceflightnewsapi.Articles.Create, as: ArticleCreate
    alias Spaceflightnewsapi.Launches.Create, as: LaunchCreate
    alias Spaceflightnewsapi.Events.Create, as: EventCreate
    alias Spaceflightnewsapi.Client.Client
    # import Ecto.Changeset
    use Ecto.Schema


    def test do
        # Client.get_all()
        # paramse = %Event{provider: "event provider"}
        # |> Repo.insert()
        # paramsl = %{provider: "event provider"}
        #  Repo.all(Article) |> Repo.preload([:events, :launches])
        # {:ok, %Article{id: id} = articles} =
            article = %{
                "events" => [
                    %{
                        "id" => "56db9abd-41b8-41a3-9d6d-88e52460682b",
                        "provider" => "Event 1"
                      }
                ],
                "featured" => false,
                "id" => 13111,
                "imageUrl" => "https://spaceflightnow.com/wp-content/uploads/2021/12/DSC_0052.jpg",
                "launches" => [
                  %{
                    "id" => "56db9abd-41b8-41a3-9d6d-88e52460682b",
                    "provider" => "Launch Library 2"
                  }
                ],
                "newsSite" => "Spaceflight Now",
                "publishedAt" => "2021-12-03T05:38:51.000Z",
                "summary" => "SpaceX set a new record Thursday for the most missions by the company’s Falcon rocket family in a year, successfully sending a cargo of 48 Starlink internet satellites and two BlackSky optical Earth-imaging spacecraft into orbit from Cape Canaveral.",
                "title" => "SpaceX aces 27th Falcon 9 rocket flight of the year, a new record",
                "updatedAt" => "2021-12-03T05:44:39.626Z",
                "url" => "https://spaceflightnow.com/2021/12/03/spacex-aces-27th-falcon-9-rocket-flight-of-the-year-a-new-record/"
              }
        # |> Article.changeset()
        # Ecto.build_assoc(result, :event, paramse)

    #     Repo.transaction fn ->
    #         post =
    #             article
    #             |> Article.changeset()
    #             |> Repo.insert!()

    #             insert_association(post,:events, article["events"]) |> IO.inspect(label: "events")
    #             insert_association(post,:launches, article["launches"]) |> IO.inspect(label: "launches")

    #         # Ecto.build_assoc(post, :events, article["events"])
    #         # |> Repo.insert!()

    #         # Ecto.build_assoc(post, :launches, article["launches"])
    #         # |> Repo.insert!
    #     end
    end

    defp insert_association(article, association, params) do
        Stream.map(params, fn param ->
            IO.inspect(param, label: "PARAM: ")
            Ecto.build_assoc(article, association , param)
        |> Repo.insert!
        end)
        |> Enum.to_list()
    end
end
