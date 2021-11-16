class CreateBasketProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :basket_products do |t|
      t.references :bench_merchandise, null: false, foreign_key: true
      t.references :basket, null: false, foreign_key: true
      t.integer :quantity

      t.timestamps
    end
  end
end
