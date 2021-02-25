
defmodule BibliotecaHelperTest do
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
        biblioteca = insert(:biblioteca, libro: libro, autor: autor)
      end
    end

    test "get_autor_by_libros/1 list one autor from libro", %{autor: autor} do
      assert length(HelpersBibliotega.get_autor_by_libros(autor.id)) == 1
    end


end
