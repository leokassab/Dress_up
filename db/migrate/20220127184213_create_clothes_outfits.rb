class CreateClothesOutfits < ActiveRecord::Migration[6.1]
  def change
    create_table :clothes_outfits do |t|
      t.references :clothe, null: false, foreign_key: true
      t.references :outfit, null: false, foreign_key: true

      t.timestamps
    end
  end
end
