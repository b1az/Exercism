defmodule Hamming do
  @doc """
  Returns number of differences between two strands of DNA, known as the Hamming Distance.

  ## Examples

  iex> Hamming.hamming_distance('AAGTCATA', 'TAGCGATC')
  {:ok, 4}
  """
  @spec hamming_distance([char], [char]) :: {:ok, non_neg_integer} | {:error, String.t()}
  def hamming_distance(strand1, strand2) do
    s1 = strand1 |> List.to_string
    s2 = strand2 |> List.to_string

    cond do
      String.length(s1) != String.length(s2) ->
        {:error, "Lists must be the same length"}

      true ->
        g1 = s1 |> String.graphemes
        g2 = s2 |> String.graphemes
        {:ok, graphemes_distance(g1, g2)}
    end
  end

  defp graphemes_distance(g1, g2) do
    # Can this be simplified/shortened?
    Enum.reduce(
      Enum.zip(g1, g2),
      0,
      fn x, acc ->
        c1 = elem(x, 0)
        c2 = elem(x, 1)

        case c1 == c2 do
          true -> acc
          false -> acc + 1
        end
      end
    )
  end

  ## Won't work; guard in a form of String.length/1 not allowed.
  # defp hd(s1,s2) when String.length(s1) != String.length(s2) do
  #   {:error, "Lists must be the same length"}
  # end
  # defp hd(s1,s2) do
  # end
end
