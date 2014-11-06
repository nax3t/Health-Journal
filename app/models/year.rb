class Year < ActiveRecord::Base
	has_many :months
	has_many :days, through: :month
	has_many :entries, through: :month
end
