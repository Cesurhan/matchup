class AddColumnsToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :admin, :boolean, default: false
    add_column :users, :teacher, :boolean, default: false
  end
end
