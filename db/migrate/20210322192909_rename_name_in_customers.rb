class RenameNameInCustomers < ActiveRecord::Migration[6.1]
  def change
    rename_column :customers, :name, :full_name
  end
    add_index :customers, :email, unique: true
end
