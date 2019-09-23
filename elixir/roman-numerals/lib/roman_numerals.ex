defmodule RomanNumerals do
  @doc """
  Convert the number to a roman number.
  """
  @spec numeral(pos_integer) :: String.t()
  def numeral(number) do
    roman(number)
  end

  defp roman(n) when n >= 1000, do: "M" <> roman(n - 1000)
  defp roman(n) when n >= 900, do: "CM" <> roman(n - 900)
  defp roman(n) when n >= 500, do: "D" <> roman(n - 500)
  defp roman(n) when n >= 400, do: "CD" <> roman(n - 400)
  defp roman(n) when n >= 100, do: "C" <> roman(n - 100)
  defp roman(n) when n >= 90, do: "XC" <> roman(n - 90)
  defp roman(n) when n >= 50, do: "L" <> roman(n - 50)
  defp roman(n) when n >= 40, do: "XL" <> roman(n - 40)
  defp roman(n) when n >= 10, do: "X" <> roman(n - 10)
  defp roman(n) when n == 9, do: "IX"
  defp roman(n) when n >= 5, do: "V" <> roman(n - 5)
  defp roman(n) when n == 4, do: "IV"
  defp roman(n) when n >= 1, do: "I" <> roman(n - 1)
  defp roman(n), do: ""
end
