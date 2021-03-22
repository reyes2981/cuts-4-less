class RenamecIdInCustomers < ActiveRecord::Migration[6.1]
  def change
    rename_column :customers, :c_id, :u_id
  end
end
