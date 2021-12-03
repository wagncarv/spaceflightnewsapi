defmodule Spaceflightnewsapi.Repo do
  use Ecto.Repo,
    otp_app: :spaceflightnewsapi,
    adapter: Ecto.Adapters.Postgres
end
