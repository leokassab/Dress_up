class CreateClothes < ActiveRecord::Migration[6.1]
  def change
    create_table :clothes do |t|
      t.string :category
      t.string :bookmark
      t.string :brand
      t.string :size
      t.string :colour
      t.string :material
      t.string :product_ref
      t.string :name
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
