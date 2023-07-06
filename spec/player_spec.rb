require "./lib/card"
require "./lib/deck"
require "./lib/player"

RSpec.describe Player do
    card1 = Card.new(:diamond, 'Queen', 12)
    card2 = Card.new(:spade, '3', 3)
    card3 = Card.new(:heart, 'Ace', 14)

    deck = Deck.new([card1, card2, card3])

    player = Player.new('Clarisa', deck)

    it "has a name" do
        expect(player.name).to eq("Clarisa")
    end

    it "has lost?" do
        expect(player.has_lost?).to eq(false)
    end

    it "should remove a card from the deck" do
        expect(player.deck.remove_card).to eq(card1)
    end

    it "has lost?" do
        expect(player.has_lost?).to eq(false)
    end

    it "should remove a card from the deck" do
        expect(player.deck.remove_card).to eq(card2)
    end

    it "has lost?" do
        expect(player.has_lost?).to eq(false)
    end

    it "should remove a card from the deck" do
        expect(player.deck.remove_card).to eq(card3)
    end

    it "has lost?" do
        expect(player.has_lost?).to eq(true)
    end
    
end