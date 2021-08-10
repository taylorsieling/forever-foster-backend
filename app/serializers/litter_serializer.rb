class LitterSerializer < ActiveModel::Serializer
  attributes :id, :theme, :intake_date, :intake_time, :location_found, :intake_type
end
