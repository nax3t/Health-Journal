class Month < ActiveRecord::Base
	has_many :days
	has_many :entries, through: :days
	belongs_to :year
end
