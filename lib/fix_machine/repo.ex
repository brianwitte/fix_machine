defmodule FixMachine.Repo do
  use Ecto.Repo,
    otp_app: :fix_machine,
    adapter: Ecto.Adapters.Postgres
end
