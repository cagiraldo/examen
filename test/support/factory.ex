defmodule Examen.Factory do
  use ExMachina.Ecto, repo: Examen.Repo
  alias Examen.Biblioteca
  alias Examen.Libro
  alias Examen.Autor

  def biblioteca_factory do
    %Biblioteca{
      nombre: "nombre",
      libro: build(:libro)
    }
  end

  def autor_factory do
    %Autor{
      nombre: "gabriel garcia"
    }
  end

  def libro_factory do
    %Libro{
      nombre: "cuentos peregrinos",
      autor: build(:autor)
    }
  end
end
