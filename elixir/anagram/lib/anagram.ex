defmodule Anagram do
  @doc """
  Returns all candidates that are anagrams of, but not equal to, 'base'.
  """
  @spec match(String.t(), [String.t()]) :: [String.t()]
  def match(base, candidates) do
    Enum.filter(
      candidates,
      fn candidate -> anagram?(base, candidate) end
    )
  end

  defp str_to_map(str) do
    str
    |> String.graphemes()
    |> Enum.reduce(%{}, fn char, acc ->
      Map.update(acc, char, 1, &(&1 + 1))
    end)
  end

  defp anagram?(base, candidate) do
    b_map = str_to_map(String.downcase(base))
    c_map = str_to_map(String.downcase(candidate))

    String.upcase(base) != String.upcase(candidate) &&
      String.length(candidate) == String.length(base) &&
      Map.equal?(b_map, c_map)
  end
end
