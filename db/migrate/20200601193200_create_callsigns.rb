class CreateCallsigns < ActiveRecord::Migration
  def change
    create_table :callsigns do |t|
      t.string :name
      t.boolean :active
      t.integer :user_id
      t.string :gridsquare
    end
  end
end
