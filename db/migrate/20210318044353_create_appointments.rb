class CreateAppointments < ActiveRecord::Migration[6.1]
  def change
    create_table :appointments do |t|
      t.integer :hairdresser_id
      t.integer :customer_id

      t.timestamps
    end
  end
end
