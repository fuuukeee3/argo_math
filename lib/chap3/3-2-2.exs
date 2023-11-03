defmodule Main do
  def main do
    [a, b] =
      IO.read(:line)
      |> String.trim()
      |> String.split(" ")
      |> Enum.map(&String.to_integer/1)

    gcd(a, b)
    |> IO.puts()
  end

  def gcd(a, 0), do: a
  def gcd(a, b), do: gcd(b, rem(a, b))
end

Main.main()
