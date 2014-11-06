class Day < ActiveRecord::Base
	belongs_to :month
	belongs_to :year
end
