class Dossier < ApplicationRecord
  has_one :country
  has_many :entities
end
