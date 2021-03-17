defmodule Examen.Libro do
  use Ecto.Schema
  import Ecto.Changeset
  schema "libros" do
    field :nombre, :string
    belongs_to :autor, Examen.Autor
  end


  def changeset(libro, params \\ %{}) do
    libro
    |> cast(params, [:nombre, :autor_id])
    |> validate_required([:nombre, :autor_id])
    |> assoc_constraint(:autor)
  end
end
