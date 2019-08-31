class UserSerializer < ActiveModel::Serializer
  attributes :id, :phone, :dni, :connections
  has_one :curriculum_vitae

  def connections
    object.connections.size
  end
end
