class User < ActiveRecord::Base
  has_many :cards

  validates :email, presence: true, uniqueness: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  self.has_secure_password()

  def is_admin?
    email == "nicholasjaybundy@gmail.com" || "beccaw30@gmail.com"
  end

end
