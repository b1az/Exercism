defmodule RnaTranscription do
  @doc """
  Transcribes a character list representing DNA nucleotides to RNA

  ## Examples

      iex> RnaTranscription.to_rna('ACTG')
      'UGAC'

  """
  @spec to_rna([char]) :: [char]
  def to_rna(dna) do
    dna
    |> Enum.map(
      &case &1 do
        ?G ->
          ?C

        ?T ->
          ?A

        ?A ->
          ?U

        ?C ->
          ?G
      end
    )
  end
end
