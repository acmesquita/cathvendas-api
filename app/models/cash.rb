class Cash < ApplicationRecord
    has_many :deposits
    has_many :paymentings
    has_many :balances
end
