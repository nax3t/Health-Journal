class AddSnacksToEntries < ActiveRecord::Migration
  def change
    add_column :entries, :snacks, :text
  end
end
