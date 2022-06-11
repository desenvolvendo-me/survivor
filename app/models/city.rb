class City < ApplicationRecord
  has_many :survivors

  def description_uf
    self.description + "/" + self.uf
  end
end
