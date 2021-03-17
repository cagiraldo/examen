defmodule Examen.HelpersLibro do
  #alias Examen.Autor
  alias Examen.Repo
  import Ecto.Query
  def insertar(nombre, idAutor) do
    Repo.insert( %Examen.Libro{nombre: nombre, autor_id: idAutor} )
    #autor
    #|> Autor.changeset(attrs)
    #|> Repo.insert( %Examen.Libro{nombre: "hola",autor: 1} )
  end


  def update_libro(%Examen.Libro{} = libro, attrs) do
    libro
    |>Examen.Libro.changeset(attrs)
    |>Repo.update
  end

  def delete_libro(%Examen.Libro{} = libro) do
    libro
    |> Ecto.Changeset.change
    #|> Ecto.Changeset.no_assoc_constraint(:autor)
    |> Repo.delete
  end

  def get_libro(id) do
    query = from u in "libros",
            where: u.id == ^id,
            select: u.nombre
    Repo.one(query)
  end

  def get_libro_autor(id) do
    query = from u in "libros",
            where: u.autor_id == ^id,
            select: u.nombre
    Repo.all(query)
  end
end
