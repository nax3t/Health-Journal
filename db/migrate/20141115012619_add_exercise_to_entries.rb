class AddExerciseToEntries < ActiveRecord::Migration
  def change
    add_column :entries, :exercise, :text
  end
end
