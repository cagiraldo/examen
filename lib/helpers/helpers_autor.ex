defmodule Examen.HelpersAutor do
  #alias Examen.Autor
  alias Examen.Repo
  import Ecto.Query
  def insertar(nombre) do
    Repo.insert( %Examen.Autor{nombre: nombre} )
    #autor
    #|> Autor.changeset(attrs)
    #|> Repo.insert( %Examen.Libro{nombre: "hola",autor: 1} )
  end

  def get_autor(id) do
    query = from u in "autor",
            where: u.id == ^id,
            select: u.nombre
    Repo.one(query)
  end
end
