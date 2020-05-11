class Tweet < ApplicationRecord
    
    
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



