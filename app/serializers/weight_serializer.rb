class WeightSerializer < ActiveModel::Serializer
  attributes :id, :date, :time, :value, :unit
  has_one :kitten
end
