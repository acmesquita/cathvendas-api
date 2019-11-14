class BalanceSerializer < ActiveModel::Serializer
  attributes :id, :date_balance, :value_start, :value_end, :cash_id
end
