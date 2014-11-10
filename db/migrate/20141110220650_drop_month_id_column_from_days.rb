class DropMonthIdColumnFromDays < ActiveRecord::Migration
  def change
		remove_column :days, :month_id
  end
end
