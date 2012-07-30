class LeaderboardsController < ApplicationController
  def countries
    @countries = Country.order("rank ASC")
  end

  def people
    @people = Person.order("points DESC")
  end
end
