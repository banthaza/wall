class Entity < ApplicationRecord
  has_many :Metadataum , class_name: 'EntityMetadatum'
end
