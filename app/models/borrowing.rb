class Borrowing < ApplicationRecord
belongs_to :reader
has_and_belongs_to_many :book_copies, :join_table => :book_copies_borrowings
end
