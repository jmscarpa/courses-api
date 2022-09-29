class CreateRecommendations < ActiveRecord::Migration[7.0]
  def change
    create_table :recommendations do |t|
      t.string :name
      t.string :description
      t.integer :category_id

      t.timestamps
    end
  end
end
