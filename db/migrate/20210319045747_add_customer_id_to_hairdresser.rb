class AddCustomerIdToHairdresser < ActiveRecord::Migration[6.1]
  def change
    add_column :hairdressers, :customer_id, :integer
  end
end
