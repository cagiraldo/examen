defmodule Examen.HelpersLibro do
  #alias Examen.Autor
  alias Examen.Repo
  import Ecto.Query
  def insertar(nombre, autor) do
    Repo.insert( %Examen.Libro{nombre: nombre, autor: autor} )
    #autor
    #|> Autor.changeset(attrs)
    #|> Repo.insert( %Examen.Libro{nombre: "hola",autor: 1} )
  end


  def get_libro(id) do
    query = from u in "libro",
            where: u.id == ^id,
            select: u.nombre
    Repo.one(query)
  end

  def get_libros_autor(id) do
    query = from u in "libro",
            where: u.autor_id == ^id,
            select: u.nombre
    Repo.all(query)
  end
end
