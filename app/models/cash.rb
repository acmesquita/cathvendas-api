class Cash < ApplicationRecord
    has_many :registries
    has_many :balances
    belongs_to :company
end
