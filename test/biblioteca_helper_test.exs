
defmodule BibliotecaHelperTest do
    use Examen.DataCase
    use ExUnit.Case
    doctest Examen
  #ExUnit.start()
  #Ecto.Adapters.SQL.Sandbox.mode(Examen.Repo, :manual)

    alias Examen.HelpersBibliotega
  #{:ok, _} = Application.ensure_all_started(:ex_machina)

    describe "#mix_biblioteca/1" do
      setup do
        autor      = insert(:autor)
        libro      = insert(:libro, autor: autor)
        biblioteca = insert(:biblioteca, libro: libro)
        {:ok, biblioteca: biblioteca, libro: libro}
      end

      test "get_autor_by_libros/1 list one id from libro", %{autor: autor } do
        #assert length(HelpersBibliotega.get_autor_by_libros(libro.id)) == 1
        HelpersBibliotega.get_autor_by_libros(autor.id) |> IO.inspect
        assert HelpersBibliotega.get_autor_by_libros(autor.id) == "gabriel garcia"
      end

      test "update_autor/autor", %{biblioteca: biblioteca} do
        HelpersBibliotega.update_bibliotega(biblioteca, %{nombre: "biblioteca1"})
        assert HelpersBibliotega.get_biblioteca(biblioteca.id) == "biblioteca1"
      end

      test "delete_biblioteca/1", %{biblioteca: biblioteca} do
        #HelpersAutor.get_autor(autor.id) |> IO.inspect
        HelpersBibliotega.delete_biblioteca(biblioteca)
        assert HelpersBibliotega.get_biblioteca(biblioteca.id) == nil
      end
    end




end
