class UpdateCustomers < ActiveRecord::Migration[6.1]
  def change
    add_column(:customers, :provider, :string)
  end
end
