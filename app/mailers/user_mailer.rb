class UserMailer < ActionMailer::Base
  default from: "gallery.connect.team@gmail.com"

  def send_connection(user, card)
    @user = User.find_by id: user
    @card = card
    mail(to: @user.email, subject: "You have a new connection!")
  end

  def login_info
    username = gallery.connect.team 
    password = gallerynewyork
  end

end