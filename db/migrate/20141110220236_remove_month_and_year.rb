class RemoveMonthAndYear < ActiveRecord::Migration
  def change
		drop_table :months
		drop_table :years
  end
end
