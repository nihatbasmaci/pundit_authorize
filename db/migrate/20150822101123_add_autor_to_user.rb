class AddAutorToUser < ActiveRecord::Migration
  def change
    add_column :users, :autor, :boolean
  end
end
