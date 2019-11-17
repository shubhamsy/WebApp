class AddUserIdIdToUserRoles < ActiveRecord::Migration[6.0]
  def change
    add_column :user_roles, :user_id, :integer
  end
end
