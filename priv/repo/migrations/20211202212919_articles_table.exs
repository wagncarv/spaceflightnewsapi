defmodule Spaceflightnewsapi.Repo.Migrations.ArticlesTable do
  use Ecto.Migration

  def change do
    create table(:articles) do
      add :featured, :boolean
      add :title, :text
      add :url, :text
      add :image_url, :text
      add :news_site, :text
      add :summary, :text
      add :published_at, :utc_datetime
      timestamps()
    end
  end
end
