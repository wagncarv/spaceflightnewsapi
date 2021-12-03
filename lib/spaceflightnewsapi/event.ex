defmodule Spaceflightnewsapi.Event do
    use Ecto.Schema
    import Ecto.Changeset

    alias Spaceflightnewsapi.Article

    @fields [:provider, :article_id]
    @derive {Jason.Encoder, only: [:provider]}

    schema "events" do
        field :provider, :string
        belongs_to :article, Article
    end

    def changeset(params) do
        %__MODULE__{}
        |> cast(params, @fields)
    end
end
