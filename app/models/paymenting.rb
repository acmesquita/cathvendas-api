class Paymenting < ApplicationRecord
    belongs_to :cash

    validates :value, :description, presence: true
    validates :value,  length: { minimum: 0.01 }
end
