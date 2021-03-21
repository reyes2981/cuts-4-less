class RenameUidInCustomers < ActiveRecord::Migration[6.1]
  def change
    rename_column :customers, :uid, :c_id
  end
end
