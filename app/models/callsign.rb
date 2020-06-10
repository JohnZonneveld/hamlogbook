class Callsign < ActiveRecord::Base
    has_many :contacts
    belongs_to :user
    validates :name, presence: :true

    include Slugifiable::InstanceMethods
    extend Slugifiable::ClassMethods

end
