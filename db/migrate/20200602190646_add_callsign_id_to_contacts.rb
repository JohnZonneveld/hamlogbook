class AddCallsignIdToContacts < ActiveRecord::Migration
  def change
    add_column :contacts, :callsign_id, :text
  end
end
