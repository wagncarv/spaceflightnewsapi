defmodule Spaceflightnewsapi.Article do
    use Ecto.Schema
    import Ecto.Changeset

    alias Spaceflightnewsapi.{Event, Launch}

    @fields [:featured, :title, :url, :image_url, :news_site, :summary, :published_at]

    @derive {Jason.Encoder, only: @fields ++ [:launches, :events]}

    schema "articles" do
        field :featured, :boolean
        field :title, :string
        field :url, :string
        field :image_url, :string
        field :news_site, :string
        field :summary, :string
        field :published_at, :utc_datetime

        has_many :events, Event
        has_many :launches, Launch

        timestamps()
    end

    def changeset(struct \\ %__MODULE__{}, params) do
        struct
        |> cast(params, @fields)
    end
end
