class LeaderboardsController < ApplicationController
  def countries
    @ranked = Country.where("rank is not null").order("rank ASC")
    @not_ranked = Country.where("rank is null")
    @countries = @ranked + @not_ranked
  end

  def people
    @people = Person.order("points DESC")
  end
end
