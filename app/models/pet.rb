class Pet < ApplicationRecord

  SPECIES = [ 'cat', 'dog', 'snake']

  validates :name, presence: true
  validates :species, inclusion: { in: SPECIES}
end
