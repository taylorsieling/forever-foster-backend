class MedicalEntrySerializer < ActiveModel::Serializer
  attributes :id, :title, :date, :time, :notes
end
