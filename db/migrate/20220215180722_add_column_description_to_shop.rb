class AddColumnDescriptionToShop < ActiveRecord::Migration[6.1]
  def change
    add_column :shops, :description, :text
  end
end
