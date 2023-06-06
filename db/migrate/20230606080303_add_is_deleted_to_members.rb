class AddIsDeletedToMembers < ActiveRecord::Migration[7.0]
  def change
    add_column :members, :is_deleted, :boolean, default: false
  end
end
