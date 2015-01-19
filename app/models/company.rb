class Company < ActiveRecord::Base
  has_many :recruiters
  has_many :jobs
  has_one :location
end
