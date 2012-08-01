class LeaderboardsController < ApplicationController
  helper_method :sort_column, :sort_direction

  def countries

    params[:sort] = 'rank' if params[:sort].nil?
    
    if params[:sort] && params[:sort] != 'rank'
      @countries = Country.order(sort_column + " " + sort_direction)
    else
      @not_ranked = Country.where("rank is null")

      if params[:direction] == 'asc' || params[:direction].nil?
        @ranked = Country.where("rank is not null").order("rank ASC")
        @countries = @ranked + @not_ranked
      else
        @ranked = Country.where("rank is not null").order("rank DESC")
        @countries = @not_ranked + @ranked
      end
    end
  end

  def people
    @people = Person.order("points DESC")
  end

  private
  
  def sort_column
    Country.column_names.include?(params[:sort]) ? params[:sort] : "rank"
  end
  
  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end
end
