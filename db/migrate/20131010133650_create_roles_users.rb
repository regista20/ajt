class CreateRolesUsers < ActiveRecord::Migration
  def change
    create_table :roles_users do |t|
      t.integer :role_id
      t.integer :user_id

      t.timestamps
    end
    add_index :roles_users, :role_id
    add_index :roles_users, :user_id
  end
end