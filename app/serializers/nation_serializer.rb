class NationSerializer < ActiveModel::Serializer
  attributes :id, :name, :language, :capital, :user_id
end
