defmodule Main do
  def main do
    _n =
      IO.read(:line)

    IO.read(:line)
    |> String.trim()
    |> String.split(" ")
    |> Enum.map(&String.to_integer/1)
    |> gcd_list()
    |> IO.inspect()
  end

  def gcd(a, 0), do: a
  def gcd(a, b), do: gcd(b, rem(a, b))

  def gcd_list([head | tail]) do
    Enum.reduce(tail, head, fn x, acc -> gcd(x, acc) end)
  end
end

Main.main()
