class DefaultCountryRankToNil < ActiveRecord::Migration
  def up
    change_column_default(:countries, :rank, nil)
  end

  def down
    change_column_default(:countries, :rank, 0)
  end
end
