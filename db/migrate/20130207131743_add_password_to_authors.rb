class AddPasswordToAuthors < ActiveRecord::Migration
  def change
    add_column :authors, :password_hash, :string
    add_column :authors, :password_salt, :string
  end
end
