class Company < ApplicationRecord
    has_many :cashes
    has_one :user
end
