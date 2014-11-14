class RemovePrevNightSleepFromEntries < ActiveRecord::Migration
  def change
		remove_column :entries, :prev_night_sleep
		add_column :entries, :prev_night_sleep, :integer
  end
end
