class Recommendation < ApplicationRecord

  has_many :comments

  validates :name, presence: true
  validates :name, uniqueness: true

  belongs_to :category

  def image_url
    return super if self[:image_url].present?
    "https://rafaturis.com.br/wp-content/uploads/2014/01/default-placeholder.png"
  end
end
