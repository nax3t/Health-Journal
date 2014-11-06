class Entry < ActiveRecord::Base
	belongs_to :day
	belongs_to :month
	belongs_to :year
end
