class AddSkuToMerchandise < ActiveRecord::Migration[6.0]
  def change
    add_column :merchandises, :sku, :string
  end
end
