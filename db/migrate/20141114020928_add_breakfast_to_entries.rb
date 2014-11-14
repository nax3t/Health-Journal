class AddBreakfastToEntries < ActiveRecord::Migration
  def change
		add_column :entries, :breakfast, :text
		add_column :entries, :lunch, :text
		add_column :entries, :dinner, :text
		add_column :entries, :prev_night_sleep, :string
		add_column :entries, :rating, :integer
  end
end
