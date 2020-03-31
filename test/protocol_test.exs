defmodule ExampleProtocolTest do
  use ExUnit.Case
  doctest ExampleProtocol

  describe "ExampleProtocolTest.example/1" do
    test "BitString" do
      assert ExampleProtocol.example("hoge") == "hello hoge"
    end

    test "構造体" do
      assert ExampleProtocol.example(%ExampleProtocolStruct{}) == "example any"
    end

    test "fall back to any" do
      assert ExampleProtocol.example(100) == "example any"
    end
  end
end
