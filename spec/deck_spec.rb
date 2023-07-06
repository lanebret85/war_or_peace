require "rspec"
require "./lib/deck"
require "./lib/card"

RSpec.describe Deck do
    card1 = Card.new(:diamond, 'Queen', 12)
    card2 = Card.new(:spade, '3', 3)
    card3 = Card.new(:heart, 'Ace', 14)

    cards = [card1, card2, card3]

    it "exists" do
        deck = Deck.new(cards)

        expect(deck).to be_an_instance_of(Deck)
    end

    it "should return cards" do
        deck = Deck.new(cards)

        expect(deck.cards).to eq(cards)
    end

    it "should return card ranks" do
        deck = Deck.new(cards)

        expect(deck.rank_of_card_at(0)).to eq(12)
    end

    it "should return high ranking cards" do
        deck = Deck.new(cards)

        expect(deck.high_ranking_cards).to eq([card1, card3])
    end

    it "should return percent of high ranking cards" do
        deck = Deck.new(cards)

        expect(deck.percent_high_ranking).to eq(200.0 / 3)
    end

    it "should remove a card" do
        deck = Deck.new(cards)

        expect(deck.remove_card).to eq([card2, card3])
    end

    it "should add a card" do
        deck = Deck.new(cards)
        card4 = Card.new(:club, "5", 5)

        expect(deck.add_card(card4)).to eq([card2, card3, card4])
    end

end