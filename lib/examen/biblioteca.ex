defmodule Examen.Biblioteca do
  use Ecto.Schema
  import Ecto.Changeset
  schema "biblioteca" do
    field :nombre, :string
    belongs_to :libro, Examen.Libro
  end

  def changeset(biblioteca, params \\ %{}) do
    biblioteca
    |> cast(params, [:nombre, :libro_id])
    |> validate_required([:nombre, :libro_id])
    |> assoc_constraint(:libro)
  end
end
