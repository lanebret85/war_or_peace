class Deck
    attr_reader :cards

    def initialize(cards)
        @cards = cards
    end

    def rank_of_card_at(index)
        @cards[index].rank
    end

    def high_ranking_cards
        high_cards = []
        @cards.each do |card|
            if card.rank >= 11
                high_cards.append(card)
            end
        end
        high_cards
    end

    def percent_high_ranking
        high_ranking_cards.count.to_f * 100 / cards.count
    end

    def remove_card
        @cards.shift
        @cards
    end
        
    def add_card(card)
        @cards.push(card)
    end

end
