defmodule Examen do

  alias Examen.HelpersAutor
  @moduledoc """
  Examen keeps the contexts that define your domain
  and business logic.

  Contexts are also responsible for managing your data, regardless
  if it comes from the database, an external API or others.
  """
  def inserta(nombre) do
   # Repo.insert( %Examen.Libro{nombre: "hola",autor: 1} )
    HelpersAutor.insertar(nombre)
  end
end
