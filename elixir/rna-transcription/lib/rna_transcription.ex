defmodule RnaTranscription do
  @doc """
  Transcribes a character list representing DNA nucleotides to RNA

  ## Examples

      iex> RnaTranscription.to_rna('ACTG')
      'UGAC'

  """
  @spec to_rna([char]) :: [char]
  def to_rna(dna) do
    _to_rna(dna)
  end

  defp _to_rna([h | t]) do
    case h do
      ?G ->
        [?C | _to_rna(t)]

      ?T ->
        [?A | _to_rna(t)]

      ?A ->
        [?U | _to_rna(t)]

      ?C ->
        [?G | _to_rna(t)]

      _ ->
        []
    end
  end

  defp _to_rna([]) do
    []
  end
end
