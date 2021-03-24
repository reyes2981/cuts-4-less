class RenameDateTimeInAppointments < ActiveRecord::Migration[6.1]
  def change
    rename_column :appointments, :datetime, :date_time
  end
end
