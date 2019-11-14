class CompanySerializer < ActiveModel::Serializer
  attributes :id, :name, :user_name

  has_many :cashes

  def user_name
    object.user.name
  end
end
