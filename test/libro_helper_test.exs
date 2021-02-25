defmodule LibroHelperTest do
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
      insert(libro: libro)
      {ok, libro: libro, autor: autor}
    end

    test "get_libros_autor/1 list many libro from autor", %{autor: autor} do
      assert length(HelpersLibro.get_libros_autor(autor.id)) == 1
    end
  end
end
