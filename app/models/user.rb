class User < ApplicationRecord
    has_many :tweets

    has_secure_password
    #to use the gem bcrypt
end
