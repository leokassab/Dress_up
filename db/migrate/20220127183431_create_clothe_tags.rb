class CreateClotheTags < ActiveRecord::Migration[6.1]
  def change
    create_table :clothe_tags do |t|
      t.references :clothe, null: false, foreign_key: true
      t.references :tag, null: false, foreign_key: true

      t.timestamps
    end
  end
end
