class AddRoleToSignups < ActiveRecord::Migration[5.2]
  def change
    add_column :signups, :role, :string
  end
end
