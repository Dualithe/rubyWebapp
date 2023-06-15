class CreateBorrowings < ActiveRecord::Migration[7.0]
  def change
    create_table :borrowings do |t|
      t.integer :copy_id
      t.integer :reader_id
      t.date :borrowing_date
      t.date :return_date

      t.timestamps
    end
  end
end
