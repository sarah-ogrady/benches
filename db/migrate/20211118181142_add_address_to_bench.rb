class AddAddressToBench < ActiveRecord::Migration[6.0]
  def change
    add_column :benches, :address, :string
  end
end
