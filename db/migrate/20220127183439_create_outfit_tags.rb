class CreateOutfitTags < ActiveRecord::Migration[6.1]
  def change
    create_table :outfit_tags do |t|
      t.references :outfit, null: false, foreign_key: true
      t.references :tag, null: false, foreign_key: true

      t.timestamps
    end
  end
end
