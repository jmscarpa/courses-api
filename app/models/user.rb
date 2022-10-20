class User < ApplicationRecord
  has_many :comments
  devise :database_authenticatable, :registerable, :validatable

  validates :name, presence: true
  after_create :set_api_key!

  def picture_url
    hash = Digest::MD5.hexdigest(email)
    "https://www.gravatar.com/avatar/#{hash}"
  end

  def set_api_key!
    update(api_key: SecureRandom.urlsafe_base64)
  end
end
