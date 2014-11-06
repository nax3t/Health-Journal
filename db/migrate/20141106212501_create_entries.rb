class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.integer :day_id
      t.string :event
      t.text :details

      t.timestamps
    end
  end
end
