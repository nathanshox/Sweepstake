class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.string :name
      t.integer :rank, :default => 0
      t.integer :gold, :default => 0
      t.integer :silver, :default => 0
      t.integer :bronze, :default => 0
      t.decimal :points, :default => 0
      t.decimal :factor, :default => 0
      t.decimal :total_points, :default => 0

      t.timestamps
    end
  end
end
