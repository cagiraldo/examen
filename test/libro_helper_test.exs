defmodule LibroHelperTest do
  use Examen.DataCase
  use ExUnit.Case
  doctest Examen
  #ExUnit.start()
  #Ecto.Adapters.SQL.Sandbox.mode(Examen.Repo, :manual)

  alias Examen.HelpersLibro
  #{:ok, _} = Application.ensure_all_started(:ex_machina)

  describe "#mix_biblioteca/1" do
    setup do
      autor      = insert(:autor)
      libro      = insert(:libro, autor: autor)
      #insert(libro: libro)
      {:ok, libro: libro, autor: autor}
    end

    test "get_libros_autor/1 list many libro from autor", %{autor: autor} do
      assert HelpersLibro.get_libro_autor(autor.id) == ["cuentos peregrinos"]
    end


    test "delete_libro/1 list many libro from autor", %{libro: libro} do
      HelpersLibro.delete_libro(libro) |> IO.inspect
      assert HelpersLibro.get_libro(libro.id) == nil
    end


    test "update_libro/1",%{libro: libro} do
      HelpersLibro.update_libro(libro, %{nombre: "cuentos peregrinos 2"})
      assert HelpersLibro.get_libro(libro.id) == "cuentos peregrinos 2"
    end

    #test "delete_autor/1", %{autor: autor} do
      #HelpersAutor.get_autor(autor.id) |> IO.inspect
     # HelpersAutor.delete_autor(autor)
     # assert HelpersAutor.get_autor(autor.id) == nil
    #end





  end
end
