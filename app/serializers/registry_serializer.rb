class RegistrySerializer < ActiveModel::Serializer
  attributes :id, :date, :description, :value

  def date
    object.created_at
  end
end
