class AddNotNullConstraints < ActiveRecord::Migration
  def change
    change_column :lists, :user_id, :integer, null: false
    change_column :items, :list_id, :integer, null: false
    change_column :lists, :permissions, :string, default: "private", null: false
  end
end
