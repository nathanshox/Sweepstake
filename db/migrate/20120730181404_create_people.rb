class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.decimal :points

      t.timestamps
    end

    add_column :countries, :person_id, :integer
  end
end
