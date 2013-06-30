class AddLastNameChangeUsernameToFirstName < ActiveRecord::Migration
  def change
    add_column :users, :last_name, :string
    rename_column :users, :username, :first_name 
  end
end
