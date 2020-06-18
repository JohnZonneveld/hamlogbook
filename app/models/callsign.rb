class Callsign < ActiveRecord::Base
    has_many :contacts, dependent: :destroy
    belongs_to :user
    validates :name, presence: :true

    include Slugifiable::InstanceMethods
    extend Slugifiable::ClassMethods

end
