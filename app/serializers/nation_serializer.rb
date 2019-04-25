class NationSerializer < ActiveModel::Serializer
  attributes :id, :name, :language, :capital
end
