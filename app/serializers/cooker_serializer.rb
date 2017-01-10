class CookerSerializer < ActiveModel::Serializer
  attributes :id, :cooker_name, :cooker_email_address, :cooker_home_address, :cooker_phone_number, :cooker_other_phone_number
end
