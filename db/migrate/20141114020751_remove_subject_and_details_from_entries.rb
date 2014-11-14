class RemoveSubjectAndDetailsFromEntries < ActiveRecord::Migration
  def change
		remove_column :entries, :subject
		remove_column :entries, :details
  end
end
