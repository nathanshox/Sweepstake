class Person < ActiveRecord::Base
  attr_accessible :name, :points

  has_many :countries
end
