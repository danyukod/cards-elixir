defmodule CardsTest do
  use ExUnit.Case
  doctest Cards

  test "create_deck makes 20 cards" do
    deck_length = length(Cards.create_deck)
    assert deck_length == 52
  end

  test "shuffling a deck randomizes it" do
    deck = Cards.create_deck
    refute deck == Cards.shuffle deck
  end

  test "create a hand with five cards" do
    {hand,_} = Cards.create_hand 5

    assert length(hand) == 5
  end

end
