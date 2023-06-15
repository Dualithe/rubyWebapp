class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.integer :book_id
      t.integer :library_id
      t.string :author
      t.string :title

      t.timestamps
    end
  end
end