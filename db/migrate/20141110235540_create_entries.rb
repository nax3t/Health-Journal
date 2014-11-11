class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :subject
      t.text :details
      t.date :date

      t.timestamps
    end
  end
end
