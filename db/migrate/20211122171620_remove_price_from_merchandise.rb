class RemovePriceFromMerchandise < ActiveRecord::Migration[6.0]
  def change
    remove_column :merchandises, :price, :integer
  end
end
