defmodule Examen.HelpersBibliotega do
  #alias Examen.Autor
  alias Examen.Repo
  import Ecto.Query
  def insertar(nombre, autor) do
    Repo.insert( %Examen.Biblioteca{nombre: nombre} )
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


  def get_autor_by_libros(id) do
    query = from b in "biblioteca",
            join: l in "libros", on: l.id == b.libro_id,
            join: a in "autor", on: a.id == l.autor_id,
            select: a.nombre
    Repo.all(query)
  end


end
