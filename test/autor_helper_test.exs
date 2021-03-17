defmodule AutorHelperTest do
  use ExUnit.Case
  use Examen.DataCase
  doctest Examen
  #ExUnit.start()
  #Ecto.Adapters.SQL.Sandbox.mode(Examen.Repo, :manual)

  alias Examen.HelpersAutor
  #{:ok, _} = Application.ensure_all_started(:ex_machina)

  describe "#mix_biblioteca/1" do
    setup do
      autor      = insert(:autor)
      libro      = insert(:libro, autor: autor)
      #insert(autor: autor)

      {:ok, autor: autor}
    end

    test "get_autor/1 list one autor from libro", %{autor: autor} do
      assert HelpersAutor.get_autor(autor.id) == "gabriel garcia"
    end

    test "update_autor/1", %{autor: autor} do
      HelpersAutor.update_autor(autor, %{nombre: "jose"})
      assert HelpersAutor.get_autor(autor.id) == "jose"
    end

    test "delete_autor/1", %{autor: autor} do
      #HelpersAutor.get_autor(autor.id) |> IO.inspect
      HelpersAutor.delete_autor(autor)
      assert HelpersAutor.get_autor(autor.id) == nil
    end
  end


end
