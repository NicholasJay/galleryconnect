class Card < ActiveRecord::Base
  belongs_to :user

  def self.hellotext
    print "hello Nick"
  end

  def self.send_weekly_cards
    @allcards = Card.all
    @allcards.each do |card|
      if !card.called?
        UserMailer.weekly_cards(card).deliver
      end
    end
  end

end
