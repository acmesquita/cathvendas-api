class CashSerializer < ActiveModel::Serializer
  attributes :id, :name

  has_many :registries
end
