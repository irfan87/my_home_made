class MenuSerializer < ActiveModel::Serializer
  attributes :id, :cooker_id, :menu_title, :menu_descriptions
  belongs_to :cooker
end
