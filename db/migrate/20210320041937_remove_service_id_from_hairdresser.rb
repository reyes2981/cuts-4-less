class RemoveServiceIdFromHairdresser < ActiveRecord::Migration[6.1]
  def change
    remove_column :hairdressers, :service_id, :integer
  end
end
