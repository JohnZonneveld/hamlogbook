class User < ActiveRecord::Base
    has_secure_password

    has_many :callsigns, dependent: :destroy
    has_many :contacts, through: :callsigns, dependent: :destroy
end
