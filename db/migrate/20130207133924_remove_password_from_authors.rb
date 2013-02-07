class RemovePasswordFromAuthors < ActiveRecord::Migration
  def up
    remove_column :authors, :password
  end

  def down
    add_column :authors, :password, :string
  end
end
