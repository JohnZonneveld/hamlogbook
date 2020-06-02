class Callsign < ActiveRecord::Base
    has_many :contacts
    belongs_to :callsign

    include Slugifiable::InstanceMethods
    extend Slugifiable::ClassMethods
    
end
