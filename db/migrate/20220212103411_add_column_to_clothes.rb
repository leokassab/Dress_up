class AddColumnToClothes < ActiveRecord::Migration[6.1]
  def change
    add_column :clothes, :bought, :boolean, default: true
    add_reference :clothes, :shop, foreign_key: true
  end
end
