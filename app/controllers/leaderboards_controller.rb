class LeaderboardsController < ApplicationController
  def countries
    @countries = Country.order("rank ASC")
  end

  def people
  end
end
