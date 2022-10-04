class Recommendation < ApplicationRecord
  belongs_to :category

  def image_url
    return super if self[:image_url].present?
    "https://rafaturis.com.br/wp-content/uploads/2014/01/default-placeholder.png"
  end
end
