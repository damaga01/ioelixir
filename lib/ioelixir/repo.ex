defmodule Ioelixir.Repo do
  use Ecto.Repo,
    otp_app: :ioelixir,
    adapter: Ecto.Adapters.Postgres
end
