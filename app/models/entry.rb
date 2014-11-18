class Entry < ActiveRecord::Base
	belongs_to :user
	validates :rating, numericality: { :greater_than_or_equal_to => 1, :less_than_or_equal_to => 10, :only_integer => true}
	validates :prev_night_sleep, numericality: { :greater_than_or_equal_to => 1, :less_than_or_equal_to => 24, :only_integer => true}
end
