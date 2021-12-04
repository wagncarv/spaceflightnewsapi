defmodule Spaceflightnewsapi.Articles.Show do
    use Ecto.Schema
    alias Spaceflightnewsapi.{Article, Repo}

    def call() do
        Repo.all(Article)
        |> handle_result()
    end

    defp handle_result(result) when is_list(result), do: {:ok, result |> Repo.preload([:events, :launches])}
end
