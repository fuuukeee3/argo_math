defmodule Main do
  def main do
    IO.read(:line)
    |> String.trim()
    |> String.to_integer()
    |> solve
  end

  def solve(n) do
    list = for i <- 2..trunc(:math.sqrt(n * n)), rem(n, i) == 0, do: i

    list
    |> length
    |> output
  end

  defp output(0), do: IO.puts("Yes")
  defp output(_), do: IO.puts("No")
end

Main.main()
