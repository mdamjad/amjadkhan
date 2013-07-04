class User < ActiveRecord::Base
  has_many :posts
  validates :first_name,:last_name,:username, presence: true
  validates :password, length: { in: 6..40 }

  before_validation :ensure_username_has_a_value
  protected
  def ensure_username_has_a_value
    if username.nil?
      self.username = first_name.downcase+"_"+last_name.downcase
    end
  end
end
