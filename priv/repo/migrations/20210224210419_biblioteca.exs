defmodule Examen.Repo.Migrations.Biblioteca do
  use Ecto.Migration
  def change do
    create table(:biblioteca) do
      add :nombre, :string, null: false
      add :libro_id, references(:libros, on_delete: :delete_all)
    end
    create unique_index(:biblioteca, [:libro_id])
  end

end
