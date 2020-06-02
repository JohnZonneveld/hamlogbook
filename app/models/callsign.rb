class Callsign < ActiveRecord::Base
    has_many :contacts
    belongs_to :callsign
end
