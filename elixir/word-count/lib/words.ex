defmodule Words do
  @doc """
  Count the number of words in the sentence.

  Words are compared case-insensitively.
  """
  @spec count(String.t()) :: map
  def count(sentence) do
    sentence
    |> words_from_sentence()
    |> word_count()
  end

  defp words_from_sentence(sentence) do
    sentence
    |> String.downcase()
    |> String.split(~r/[\ :,_!&@$%^&]/, trim: true)
  end

  defp word_count(words) do
    Enum.reduce(words, %{}, fn word, count ->
      Map.update(count, word, 1, &(&1 + 1))
    end)
  end
end
