class AddColumnToHairdresser < ActiveRecord::Migration[6.1]
  def change
    add_column :hairdressers, :appointment_id, :integer

  end
end
