defmodule RomanNumeralsTest do
  use ExUnit.Case

  # @tag :pending
  test "1" do
    assert RomanNumerals.numeral(1) == "I"
  end

  # @tag :pending
  test "2" do
    assert RomanNumerals.numeral(2) == "II"
  end

  # @tag :pending
  test "3" do
    assert RomanNumerals.numeral(3) == "III"
  end

  # @tag :pending
  test "4" do
    assert RomanNumerals.numeral(4) == "IV"
  end

  # @tag :pending
  test "5" do
    assert RomanNumerals.numeral(5) == "V"
  end

  # @tag :pending
  test "6" do
    assert RomanNumerals.numeral(6) == "VI"
  end

  test "9" do
    assert RomanNumerals.numeral(9) == "IX"
  end

  # @tag :pending
  test "27" do
    assert RomanNumerals.numeral(27) == "XXVII"
  end

  # @tag :pending
  test "48" do
    assert RomanNumerals.numeral(48) == "XLVIII"
  end

  test "59" do
    assert RomanNumerals.numeral(59) == "LIX"
  end

  test "93" do
    assert RomanNumerals.numeral(93) == "XCIII"
  end

  test "141" do
    assert RomanNumerals.numeral(141) == "CXLI"
  end

  test "163" do
    assert RomanNumerals.numeral(163) == "CLXIII"
  end

  test "402" do
    assert RomanNumerals.numeral(402) == "CDII"
  end

  test "575" do
    assert RomanNumerals.numeral(575) == "DLXXV"
  end

  test "911" do
    assert RomanNumerals.numeral(911) == "CMXI"
  end

  test "1024" do
    assert RomanNumerals.numeral(1024) == "MXXIV"
  end

  test "3000" do
    assert RomanNumerals.numeral(3000) == "MMM"
  end
end
