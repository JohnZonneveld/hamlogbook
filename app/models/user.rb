class User < ActiveRecord::Base
    has_secure_password

    has_many :callsigns
    has_many :contacts, through: :callsign
end
