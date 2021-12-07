# Space Flight News API
> This is a challenge by [Coodesh](https://coodesh.com/)

O projeto `Space Flight News` é uma API que utiliza dados obtidos da API pública `api.spaceflightnewsapi` para executar operações como exibir, remover, atualizar e gravar novos dados, também conhecidas por CRUD.

### 📋 Pré-requisitos
Para executar o projeto, precisa-se que tenha instalado:

- Erlang 24 ou acima
- Elixir 1.12 ou acima
- Framework Phoenix v1.6.2

### 🔧 Instalação do projeto
- Baixar o projeto do Github:
`
    git clone https://github.com/wagncarv/spaceflightnewsapi
`
- Baixar as dependências:
Dentro da pasta do projeto executar:
`
    mix deps.get
`
- Configurar o banco de dados:
Em `config\dev.ex` inserir os dados de:
#### Configuração
- username: "username",
- password: "password",
- database: "database_name",
- hostname: "localhost"

- Após a configuração, na pasta do projeto, executar o comando:
`mix ecto.setup`

- Iniciar modo interativo do Elixir:
`iex -S mix`
- Para popular o banco de dados, no modo interativo (#iex#) do Elixir, executar:
`Spaceflightnewsapi.Routines.Routine.load_data()`

- Para executar o projeto, inserir o comando
`mix phx.server`

## 🧑‍💻 🛠 Tecnologias utilizadas
- Biblioteca Scrivener_ecto 2.0
- Ecto 3.7.1
- Elixir 1.12.3
- Erlang 24
- Framework Phoenix v1.6.2
- Postgres 12.9
- Postman
- Plugin Rest client v0.24.6
- Visual Studio Code

## 📋 Documentações das tecnologias utilizadas
- Ecto: <https://hexdocs.pm/ecto/Ecto.html>
- Elixir: <https://hexdocs.pm/elixir/Kernel.html>
- Erlang: <https://www.erlang.org/>
- Phoenix: <https://www.phoenixframework.org/>
- Postgres: <https://www.postgresql.org/>
- Postman: <https://www.postman.com/>
- Scrivener ecto: <https://hexdocs.pm/scrivener_ecto/readme.html>

## 🌐 Requisições à API
GET http://localhost:4000/api/

###

GET http://localhost:4000/api/articles

###

GET http://localhost:4000/api/articles/14

###

DELETE http://localhost:4000/api/articles/15

###

PUT http://localhost:4000/api/articles/14
content-type: application/json
json ```
{
  "featured": true,
  "title": "Novo titulo",
  "url": "http://www.url.com.br",
  "image_url": "http://www.url.com.br/images/icon.png",
  "news_site": "http://www.url.com.br",
  "summary": "Nova mensagem",
  "published_at": "2021-12-04T22:56:18Z",
  "events": [
    {
      "id": 1,
      "provider": "event provider"
    }
  ],
  "launches": [
    {
      "id": 1,
      "provider": "launch provider"
    }
  ]
}```


###

POST http://localhost:4000/api/articles
content-type: application/json
json ```
{
  "featured": true,
  "title": "Title",
  "url": "http://www.url.com.br",
  "image_url": "http://www.url.com.br/images/icon.png",
  "news_site": "http://www.url.com.br",
  "summary": "Nova mensagem",
  "published_at": "2021-12-04T22:56:18Z",
  "events": [
    {
      "id": 1,
      "provider": "event provider"
    }
  ],
  "launches": [
    {
      "id": 1,
      "provider": "launch provider"
    }
  ]
}``` 
## ⚙️🔩  Executando os testes

Para executar os testes, inserir o comando
`mix test`

### Link de apresentação do projeto

## ✒️ Autor

* **Desenvolvedor** [Wagner Patrick de Carvalho](https://github.com/wagncarv)

### 🎁 Expressão de gratidão
Agradecimento à Coodesh por esta oportunidade de participar deste processo de seleção. 📢
> This is a challenge by [Coodesh](https://coodesh.com/)

⌨️ Por [Wagner Patrick de Carvalho](https://github.com/wagncarv) 😊