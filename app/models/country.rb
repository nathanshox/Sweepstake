class Country < ActiveRecord::Base
  attr_accessible :bronze, :factor, :gold, :name, :rank, :silver

  before_save :calculate_points

  belongs_to :person

  private

    def calculate_points
      self.points = (self.gold * 10) + (self.silver * 5) + (self.bronze * 3)
      self.total_points = self.points * self.factor
    end
end
