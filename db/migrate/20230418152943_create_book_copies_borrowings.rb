class CreateBookCopiesBorrowings < ActiveRecord::Migration[7.0]
  def change
    create_table :book_copies_borrowings, id: false do |t|
      t.belongs_to :book_copy, index: true
      t.belongs_to :borrowing, index: true
    end
  end
end
