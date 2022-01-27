class AddColumnsToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :height, :float
    add_column :users, :body_shape, :string
    add_column :users, :skin_tone, :string
    add_column :users, :waist_circ, :string
    add_column :users, :chest_circ, :string
    add_column :users, :hip_circ, :string
  end
end
