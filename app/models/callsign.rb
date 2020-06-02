class Callsign < ActiveRecord::Base
    has_many :contacts
    belongs_to :user

    include Slugifiable::InstanceMethods
    extend Slugifiable::ClassMethods

end
