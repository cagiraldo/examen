defmodule Examen.HelpersBibliotega do
  #alias Examen.Autor
  alias Examen.Repo
  import Ecto.Query
  def insertar(nombre, autorid) do
    Repo.insert( %Examen.Biblioteca{nombre: nombre, libro_id: autorid } )
    #autor
    #|> Autor.changeset(attrs)
    #|> Repo.insert( %Examen.Libro{nombre: "hola",autor: 1} )
  end

  def get_biblioteca(id) do
    query = from u in "biblioteca",
            where: u.id == ^id,
            select: u.nombre
    Repo.one(query)
  end

  def update_bibliotega(%Examen.Biblioteca{} = biblioteca, attrs) do
    biblioteca
    |>Examen.Biblioteca.changeset(attrs)
    |>Repo.update
  end


  def get_autor_by_libros(id) do
    query = from b in Examen.Biblioteca,
            join: l in assoc(b, :libro), #, on: l.id == b.libro_id,
            join: a in assoc(b, :autor ), #  on: a.id == l.autor_id,
            where: b.libro_id == ^id,
            select: a.nombre
    Repo.one(query)
  end

  def delete_biblioteca(%Examen.Biblioteca{} = biblioteca) do
    biblioteca
    |> Ecto.Changeset.change
    #|> Ecto.Changeset.no_assoc_constraint(:libros)
    |> Repo.delete
  end


end
