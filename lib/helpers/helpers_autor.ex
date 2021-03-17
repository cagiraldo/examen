defmodule Examen.HelpersAutor do
  alias Examen.Autor
  alias Examen.Repo
  #alias Examen.Autor
  import Ecto.Query
  import Ecto.Changeset
  def insertar(attrs) do
    %Autor{}
    |> Autor.changeset(attrs)
    |> Repo.insert()
  end

  def update_autor(%Examen.Autor{} = autor, attrs) do
    autor
    |>Examen.Autor.changeset(attrs)
    |>Repo.update
  end

  def delete_autor(%Examen.Autor{} = autor) do
    autor
    |> Ecto.Changeset.change
    |> Ecto.Changeset.no_assoc_constraint(:libros)
    |> Repo.delete
  end

  def get_autor(id) do
    query = from u in "autor",
            where: u.id == ^id,
            select: u.nombre
    Repo.one(query)
  end
end
