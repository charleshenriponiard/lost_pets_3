class Pet < ApplicationRecord

  SPECIES = [ 'cat', 'dog', 'snake']

  validates :name, presence: true
  validates :species, inclusion: { in: SPECIES}

  def found_days_ago
    return (Date.today - self.found_on).to_i
  end

end
