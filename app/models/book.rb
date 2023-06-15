class Book < ApplicationRecord
  has_many :book_copies
  belongs_to :library
end
