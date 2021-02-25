defmodule Examen.Repo.Migrations.Libros do
  use Ecto.Migration

  def change do
    create table(:libros) do
      add :nombre, :string, null: false
      add :autor_id, references(:autor)
    end
    create unique_index(:libros, [:autor_id])
  end
end
