defmodule Examen.Repo.Migrations.Autores do
  use Ecto.Migration

  def change do
    create table(:autor) do
      add :nombre, :string, null: false
    end
  end
end
