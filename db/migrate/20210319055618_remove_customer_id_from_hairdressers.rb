class RemoveCustomerIdFromHairdressers < ActiveRecord::Migration[6.1]
  def change
    remove_column :hairdressers, :customer_id
  end
end
