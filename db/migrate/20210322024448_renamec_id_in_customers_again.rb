class RenamecIdInCustomersAgain < ActiveRecord::Migration[6.1]
  def change
    rename_column :customers, :u_id, :uid
  end
end
