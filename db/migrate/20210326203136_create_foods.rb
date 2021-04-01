class CreateFoods < ActiveRecord::Migration[6.1]
  def change
    create_table :foods do |t|
      t.string :name
      t.text :description
      t.integer :price
      t.belongs_to :department, null: false, foreign_key: true

      t.timestamps
    end
  end
end
