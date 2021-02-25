defmodule AutorHelperTest do
  use ExUnit.Case
  doctest Examen
  #ExUnit.start()
  #Ecto.Adapters.SQL.Sandbox.mode(Examen.Repo, :manual)

  alias Examen.HelpersAutor
  #{:ok, _} = Application.ensure_all_started(:ex_machina)

  describe "#mix_biblioteca/1" do
    setup do
      autor      = insert(:autor)
      libro      = insert(:libro, autor: autor)
      insert(autor: autor)
      {ok, autor: autor}
    end
  end

  test "get_autor/1 list one autor from libro", %{autor: autor} do
    assert length(HelpersAutor.get_autor(libro.id)) == 1
  end
end
