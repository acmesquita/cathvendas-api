class RegistrySerializer < ActiveModel::Serializer
  attributes :id, :date, :description, :value, :kind

  def date
    object.created_at
  end
end
