class Cash < ApplicationRecord
    has_many :deposits
    has_many :paymentings
end
