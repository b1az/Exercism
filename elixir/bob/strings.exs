defmodule StringExtension do
	def is_uppercase(string) do
		String.match?(String.upcase(string), string)
	end
end
