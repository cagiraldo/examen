defmodule Examen.Biblioteca do
  use Ecto.Schema
  import Ecto.Changeset
  schema "bibliotecas" do
    field :nombre, :string
    belongs_to :libro, Examen.Libro
  end

  def changeset(biblioteca, params \\ %{}) do
    biblioteca
    |> cast(params, [:nombre, :autor])
    |> validate_required([:nombre, :autor])
  end
end
