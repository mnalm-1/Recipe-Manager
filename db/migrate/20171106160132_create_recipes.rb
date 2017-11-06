class CreateRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table :recipes do |t|
      t.string :name, null: false
      t.string :difficulty
      t.integer :prep_time
      t.string :directions, null: false
      t.string :category, null: false
      t.string :ingredients, null: false
      t.integer :user_id, foreign_key: true
      t.integer :category_id, foreign_key: true

      t.timestamps
    end
  end
end
