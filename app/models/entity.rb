class Entity < ApplicationRecord
  has_one :Type, class_name: 'EntityType'
  has_many :Metadatum , class_name: 'EntityMetadatum'

end
