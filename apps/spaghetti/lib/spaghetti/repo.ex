defmodule Spaghetti.Repo do
  use Ecto.Repo,
    otp_app: :spaghetti,
    adapter: Ecto.Adapters.Postgres
end
