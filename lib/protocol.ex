defprotocol ExampleProtocol do
  @fallback_to_any true
  @doc "適当になにか返す"
  def example(data)
end

defimpl ExampleProtocol, for: Any do
  def example(_), do: "example any"
end

defimpl ExampleProtocol, for: BitString do
  def example(string), do: "hello #{string}"
end

defmodule ExampleProtocolStruct do
  @derive [ExampleProtocol]
  defstruct []
end
