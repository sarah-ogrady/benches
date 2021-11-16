class CreateBenchMerchandises < ActiveRecord::Migration[6.0]
  def change
    create_table :bench_merchandises do |t|
      t.references :bench, null: false, foreign_key: true
      t.references :merchandise, null: false, foreign_key: true

      t.timestamps
    end
  end
end
