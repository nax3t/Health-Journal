class RemoveDayIdColumnFromEntries < ActiveRecord::Migration
  def change
		remove_column :entries, :day_id
  end
end
