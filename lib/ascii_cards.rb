# frozen_string_literal: true

require 'ascii_cards/version'
require 'pry'

module ASCIICards
  RANK_SYMBOLS = {
    2 => '2',
    3 => '3',
    4 => '4',
    5 => '5',
    6 => '6',
    7 => '7',
    8 => '8',
    9 => '9',
    10 => '10',
    jack: 'J',
    queen: 'Q',
    king: 'K',
    ace: 'A'
  }.freeze

  SUIT_SYMBOLS = {
    spades: '♠',
    diamonds: '♦',
    hearts: '♥',
    clubs: '♣'
  }.freeze

  class << self
    def stringify(*cards)
      join_cards(
        cards.map do |rank, suit, state = :visible|
          if state == :hidden
            hidden_card
          else
            format_card(rank, suit)
          end
        end
      )
    end

    private

    def join_cards(cards)
      first, *rest = cards.map do |card|
        card.split("\n")
      end

      first.zip(*rest).map do |lines|
        lines.join('')
      end.join("\n")
    end

    def format_card(rank, suit)
      rank_symbol = RANK_SYMBOLS.fetch(rank)
      suit_symbol = SUIT_SYMBOLS.fetch(suit)

      format(<<~ASCII, rank_symbol.ljust(2), suit_symbol, rank_symbol)
        ┌─────────┐
        │%2s       │
        │         │
        │         │
        │    %s    │
        │         │
        │         │
        │       %2s│
        └─────────┘
      ASCII
    end

    def hidden_card
      <<~ASCII
        ┌─────────┐
        │░░░░░░░░░│
        │░░░░░░░░░│
        │░░░░░░░░░│
        │░░░░░░░░░│
        │░░░░░░░░░│
        │░░░░░░░░░│
        │░░░░░░░░░│
        └─────────┘
      ASCII
    end
  end
end
