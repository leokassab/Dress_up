class DeleteColumnBrand < ActiveRecord::Migration[6.1]
  def change
    remove_column :clothes, :brand
  end
end
