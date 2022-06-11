class Survivor < ApplicationRecord
  belongs_to :city, optional: true

  validates_presence_of :age, :gender
end
