class Reader < ApplicationRecord
  has_many :borrowings
  belongs_to :user
end
