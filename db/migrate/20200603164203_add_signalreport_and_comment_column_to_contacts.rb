class AddSignalreportAndCommentColumnToContacts < ActiveRecord::Migration
  def change
    add_column :contacts, :signal_report, :text
    add_column :contacts, :comments, :text
  end
end
