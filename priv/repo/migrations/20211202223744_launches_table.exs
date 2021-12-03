defmodule Spaceflightnewsapi.Repo.Migrations.LaunchesTable do
  use Ecto.Migration

  def change do
    create table(:launches) do
      add :provider, :string
      add :article_id, references(:articles)
    end
  end
end
