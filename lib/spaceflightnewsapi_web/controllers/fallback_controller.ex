defmodule SpaceflightnewsapiWeb.FallbackController do
    use SpaceflightnewsapiWeb, :controller

    alias Spaceflightnewsapi.Error
    alias SpaceflightnewsapiWeb.ErrorView

    def call(conn, {:error, %Error{status: _status, result: result} = value}) do
      IO.inspect(value, label: "VALUE ====")
      conn
      |> put_status(:not_found)
      |> put_view(ErrorView)
      |> render("error.json", result: result)
    end
  end
