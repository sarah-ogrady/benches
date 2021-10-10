class CreateBenches < ActiveRecord::Migration[6.0]
  def change
    create_table :benches do |t|
      t.float :longitude
      t.float :latitude
      t.text :description
      t.string :inscription
      t.integer :comfort_rating

      t.timestamps
    end
  end
end
