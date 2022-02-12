class CreateShops < ActiveRecord::Migration[6.1]
  def change
    create_table :shops do |t|
      t.string :brand_name
      t.string :url_website

      t.timestamps
    end
  end
end
