class BookCopy < ApplicationRecord
belongs_to :book
has_and_belongs_to_many :borrowings, :join_table => :book_copies_borrowings
end
