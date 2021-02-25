defmodule Examen.Autor do
  use Ecto.Schema
  import Ecto.Changeset
  schema "autor" do
    field :nombre, :string
  end

  def changeset(autor, params \\ %{}) do
    autor
    |> cast(params, [:nombre])
    |> validate_required([:nombre])
  end
end
