defmodule Cards do
  @moduledoc """
  Documentation for `Cards` module.
  """

  @doc """
  Create deck of cards.

  ## Examples

      iex> Cards.create_deck
      ["Ace of Clubs", "Two of Clubs", "Three of Clubs", "Four of Clubs",
       "Five of Clubs", "Ace of Diamonds", "Two of Diamonds", "Three of Diamonds",
       "Four of Diamonds", "Five of Diamonds", "Ace of Hearts", "Two of Hearts",
       "Three of Hearts", "Four of Hearts", "Five of Hearts", "Ace of Spades",
       "Two of Spades", "Three of Spades", "Four of Spades", "Five of Spades"]

  """
  def create_deck do
    cards = ["Ace", "Two", "Three", "Four", "Five"]
    suits = ["Clubs", "Diamonds", "Hearts", "Spades"]

    for suit <- suits, card <- cards do
      "#{card} of #{suit}"
    end
  end

  @doc """
  Shuffle deck of cards.

  ## Examples

      iex> Cards.shuffle(deck)     
      ["Ace of Spades", "Two of Clubs", "Four of Hearts", "Five of Diamonds",
       "Five of Spades", "Two of Spades", "Five of Clubs", "Four of Clubs",
       "Ace of Diamonds", "Four of Diamonds", "Three of Clubs", "Ace of Hearts",
       "Three of Spades", "Four of Spades", "Two of Diamonds", "Three of Hearts",
       "Five of Hearts", "Two of Hearts", "Three of Diamonds", "Ace of Clubs"]

  """
  def shuffle(deck) do
    Enum.shuffle(deck)
  end

  @doc """
  Craete hand, from cards deck.

  ## Examples

      iex> Cards.deal(deck, 5)    
      {["Ace of Spades", "Two of Spades", "Two of Hearts", "Two of Diamonds",
        "Five of Hearts"],
       ["Three of Hearts", "Three of Spades", "Four of Spades", "Five of Spades",
        "Ace of Clubs", "Five of Diamonds", "Four of Hearts", "Five of Clubs",
        "Ace of Diamonds", "Three of Diamonds", "Four of Clubs", "Three of Clubs",
        "Ace of Hearts", "Two of Clubs", "Four of Diamonds"]}

  """
  def deal(deck, hand_size) do
    Enum.split(deck, hand_size) 
  end

  @doc """
  Given a deck and sigle card, figure out if the card is in deck.

  ## Examples

      iex> Cards.contains?(deck, "Ace of Spades")
      true    

  """
  def contains?(deck, card) do
    Enum.member?(deck, card)
  end
end
