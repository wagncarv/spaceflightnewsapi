defmodule SpaceflightnewsapiWeb.ArticlesView do
    use SpaceflightnewsapiWeb, :view

    alias Spaceflightnewsapi.Article

    def render("create.json", %{article: {:ok, %Article{} = article}}) do
      %{
        message: "Article created",
        article: article
      }
    end

    def render("articles.json", %{articles: articles}), do: %{articles: articles}

    def render("article.json", %{article: article}), do: %{article: article}
  end
