require 'open-uri'
require 'nokogiri'

namespace :admin  do
  desc "Update medal counts from Olympics website"
  task :update_medal_counts => :environment do

    data = Nokogiri::HTML(open('http://www.london2012.com/medals/medal-count/'))
    countries = data.search('table/tbody').first.search('tr')

    countries.each do |country_data|
      elements = country_data.elements.to_a
      country = Country.find_by_name(elements[1].content)
    
      if country
        country.update_attributes(:rank => elements[0].content,
                                  :gold => elements[2].content,
                                  :silver => elements[3].content,
                                  :bronze => elements[4].content)
        Rails.logger.info "Updated #{elements[1].content} with RANK #{elements[0].content} GOLD #{elements[2].content} SILVER #{elements[3].content} BRONZE #{elements[4].content}"
      else
        Rails.logger.warning "Could not find country with name #{elements[1].content}"
      end
    end

    # Update People leaderboard
    Rake::Task["admin:calculate_peoples_points"].execute
  end

  desc "Calculate peoples points"
  task :calculate_peoples_points => :environment do
    @people = Person.all

    @people.each do |person|
      sum = 0
      person.countries.each do |country|
        sum += country.total_points
      end
      person.update_attributes(:points => sum)
      Rails.logger.info "Updated #{person.name} with #{sum} points"
    end
  end
end