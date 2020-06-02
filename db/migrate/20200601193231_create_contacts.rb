class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :call
      t.string :date
      t.string :time
      t.string :band
      t.string :mode
      t.string :frequency
      t.string :county
      t.string :state
      t.string :country
      t.string :grid
      t.string :iota
      t.string :cqzone
      t.string :itu
      t.boolean :qsl_send
      t.boolean :qsl_rcvd
      t.string :my_qth
    end
  end
end
