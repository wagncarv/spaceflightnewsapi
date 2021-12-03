defmodule Test do
    alias Spaceflightnewsapi.{Article, Event, Launch, Repo}
    alias Spaceflightnewsapi.Articles.Create, as: ArticleCreate
    alias Spaceflightnewsapi.Launches.Create, as: LaunchCreate
    alias Spaceflightnewsapi.Events.Create, as: EventCreate
    alias Spaceflightnewsapi.Client.Client
    # import Ecto.Changeset
    use Ecto.Schema
    alias Spaceflightnewsapi.Routines.Routine


    def test do
        Routine.load_data()
        # Client.get_all()
        # paramse = %{provider: "event provider"}
        # paramsl = %{provider: "event provider"}
        #  Repo.all(Article) |> Repo.preload([:events, :launches])
        # {:ok, %Article{id: id} = articles} =
            # article =    %{
            #     "events" => [%{"id" => 337, "provider" => "Launch Library 2"}],
            #     "featured" => false,
            #     "id" => 13095,
            #     "image_url" => "https://spaceflightnow.com/wp-content/uploads/2021/12/eva78-thumbnail.jpg",
            #     "launches" => [%{"id" => 337, "provider" => "Launch Library 2"}],
            #     "news_site" => "Spaceflight Now",
            #     "published_at" => "2021-12-02T20:18:51.000Z",
            #     "summary" => "Running two days late because of concerns about possibly threatening space debris, a veteran astronaut and a rookie crewmate floated outside the International Space Station Thursday and replaced a faulty antenna in a problem-free 6.5-hour spacewalk.",
            #     "title" => "Spacewalkers replace faulty antenna outside space station",
            #     "updated_at" => "2021-12-02T20:18:51.928Z",
            #     "url" => "https://spaceflightnow.com/2021/12/02/us-eva-78/"
            #   }
        # |> Article.changeset()
        # Ecto.build_assoc(result, :event, paramse)

    #     Repo.transaction fn ->
    #         post =
    #             article
    #             |> Article.changeset()
    #             |> Repo.insert!() #|> IO.inspect(label: "INSERT")

    #         IO.inspect(article["events"], label: "EVENTS")
    #         insert_association(post, :events, article["events"])
    #         # Ecto.build_assoc(post, :events, article["events"])
    #         # |> Repo.insert!()
    #         IO.inspect(article["launches"], label: "LAUNCHES")
    #         insert_association(post, :launches, article["launches"])
    #         # Ecto.build_assoc(post, :launches, article["launches"])
    #         # |> Repo.insert!
    #     end
    end

    # defp insert_association(article, association, params) do
    #     Stream.map(params, fn param ->
    #         Ecto.build_assoc(article, association, param)
    #     |> Repo.insert!
    #     end)
    #     |> Enum.to_list()
    # end
end
