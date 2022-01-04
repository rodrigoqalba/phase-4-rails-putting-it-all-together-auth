class CreateRecipes < ActiveRecord::Migration[6.1]
  def change
    create_table :recipes do |t|
      t.belongs_to :user, null: false, foreing_key: true
      t.string :title
      t.text :instructions
      t.integer :minutes_to_complete

      t.timestamps
    end
  end
end
