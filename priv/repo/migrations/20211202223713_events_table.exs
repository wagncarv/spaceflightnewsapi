defmodule Spaceflightnewsapi.Repo.Migrations.EventsTable do
  use Ecto.Migration

  def change do
    create table(:events) do
      add :provider, :string
      add :article_id, references(:articles)
    end
  end
end
