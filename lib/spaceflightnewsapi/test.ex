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
      param = [
        # %{id: 1, provider: "provider1"},
        # %{id: 2, provider: "provider2"}
      ] |> Helper.encode_list()


    end
end
