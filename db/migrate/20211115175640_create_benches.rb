class CreateBenches < ActiveRecord::Migration[6.0]
  def change
    create_table :benches do |t|
      t.float :longitude
      t.float :latitude
      t.text :inscription
      t.integer :comfort_rating
      t.string :dedication
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
