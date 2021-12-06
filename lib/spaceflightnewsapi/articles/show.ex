defmodule Spaceflightnewsapi.Articles.Show do
    use Ecto.Schema
    alias Spaceflightnewsapi.{Article, Counter, Repo}
    import Ecto.Query

    def call(params) do
        Article
        |> preload([:events, :launches])
        |> Repo.paginate(params)
        |> handle_result()
    end

    defp handle_result(%Scrivener.Page{} = page), do: {:ok, page}

    def paginated_call() do
        Counter.start_link(:ok)
        %{limit: limit, offset: offset} = Counter.value()
        first_page = paginate(limit, offset)
        result =
        for _n <- paginate(limit, offset) do
            Counter.increment()
            %{limit: limit, offset: offset} = Counter.value()
            paginate(limit, offset)
        end
        Counter.reset()
        {:ok, first_page ++ result
        |> List.flatten()}
    end

    defp paginate(limit, offset) do
        Article
        |> offset(^offset)
        |> limit(^limit)
        |> preload([:events, :launches])
        |> Repo.all()
    end
end
