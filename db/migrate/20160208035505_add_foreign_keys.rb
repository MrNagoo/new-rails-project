class AddForeignKeys < ActiveRecord::Migration
  def change
    add_foreign_key :lists, :users
    add_foreign_key :items, :lists
  end
end
