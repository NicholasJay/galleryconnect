class UserMailer < ActionMailer::Base
  default from: "gallery.connect.team@gmail.com"

  def send_connection(user, card)
    @user = User.find_by id: user
    @card = card
    mail(to: @user.email, subject: "You have a new connection!")
  end

  def weekly_cards(card)
    @card = card
    @user = User.find_by id: card.user_id
    mail(to: @user.email, subject: "Don't Forget Gallery Connect!")
  end

  def new_webcard_notification(webcard)
    @webcard = webcard
    mail(to: "beccaw30@gmail.com", subject: "New Website Card Filled Out")
  end

  def login_info
    username = gallery.connect.team 
    password = gallerynewyork
  end

end