class CreateHairdressers < ActiveRecord::Migration[6.1]
  def change
    create_table :hairdressers do |t|
      t.string :name

      t.timestamps
    end
  end
end
