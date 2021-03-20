class AddServiceForeignKeyToHairdressers < ActiveRecord::Migration[6.1]
  def change
    add_column :hairdressers, :service_id, :integer
  end
end
