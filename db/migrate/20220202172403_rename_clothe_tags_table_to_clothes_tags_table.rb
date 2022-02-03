class RenameClotheTagsTableToClothesTagsTable < ActiveRecord::Migration[6.1]
  def change
    rename_table :clothe_tags, :clothes_tags
  end
end
