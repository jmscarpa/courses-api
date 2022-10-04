class AddImageUrlToRecommendations < ActiveRecord::Migration[7.0]
  def change
    add_column :recommendations, :image_url, :string
  end
end
