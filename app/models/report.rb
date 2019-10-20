class Report < ApplicationRecord
  has_many :selfies
  accepts_nested_attributes_for :selfies, allow_destroy: true
end
