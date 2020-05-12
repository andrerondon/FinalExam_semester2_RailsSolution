class Tweet < ApplicationRecord
    
    belongs_to :user
    
    validates(
        :twitter, 
        presence: true, 
        length: { minimum: 3 }
    )

    validates(
        :tweet, 
        presence: true, 
        length: { minimum: 20 }
    )
    
end



