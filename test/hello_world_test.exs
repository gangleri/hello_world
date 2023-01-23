defmodule HelloWorldTest do
  use ExUnit.Case
  import Mock

  test "get_name/1 with name in args" do
    assert HelloWorld.get_name(["Jane Doe"]) == "Jane Doe"
  end

  test_with_mock  "get_name/1 with 0 args" , IO, [gets: fn(_) -> "Jane Doe" end] do
    assert HelloWorld.get_name([]) == "Jane Doe"
  end

end
