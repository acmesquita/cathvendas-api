class Registry < ApplicationRecord
    enum kind: {in:'in', out:'out'}
    
    belongs_to :cash

    validates :value, :description, presence: true
    validates :value,  length: { minimum: 0.01 }

end
