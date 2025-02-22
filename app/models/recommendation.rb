class Recommendation < ApplicationRecord
  belongs_to :category
  has_many :comments

  def cover_url
    return self[:cover_url] if self[:cover_url].present?

    'https://www.slntechnologies.com/wp-content/uploads/2017/08/ef3-placeholder-image.jpg'
  end

end
