class Card < ActiveRecord::Base
  belongs_to :user

  def send_weekly_cards
    @allcards = Card.all
    @allcards.each do |card|
      UserMailer.weekly_cards(card).deliver
    end
  end

end
