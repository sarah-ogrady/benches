class AddPriceToMerchandise < ActiveRecord::Migration[6.0]
  def change
    add_monetize :merchandises, :price, currency: { present: false }
  end
end
