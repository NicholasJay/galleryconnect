class User < ActiveRecord::Base
  has_many :cards

  validates :email, presence: true, uniqueness: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  self.has_secure_password()

  def is_admin?
    email == "nicholasjaybundy@gmail.com" || "jen@gallerychurch.com" || "heieunjun@gmail.com"
  end

end
