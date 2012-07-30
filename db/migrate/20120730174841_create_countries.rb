class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.string :name
      t.integer :rank
      t.integer :gold
      t.integer :silver
      t.integer :bronze
      t.decimal :points
      t.decimal :factor
      t.decimal :total_points

      t.timestamps
    end
  end
end
