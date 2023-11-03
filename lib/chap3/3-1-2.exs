defmodule Main do
  def main do
    IO.read(:line)
    |> String.trim()
    |> String.to_integer()
    |> solve
  end

  def solve(n) do
    factors(n)
    |> bunkai(n)
    |> IO.inspect()
  end

  def factors(n) do
    for i <- 2..trunc(:math.sqrt(n * n)), rem(n, i) == 0, do: i
  end

  def bunkai(list, n) do
    Enum.reduce(list, {[], n}, fn x, {acc, current_n} ->
      if rem(current_n, x) == 0 do
        new_n = div(current_n, x)
        {[x | acc], new_n}
      else
        {acc, current_n}
      end
    end)
    |> IO.inspect()
#    |> elem(0)
  end
end

Main.main()