class CreateReaders < ActiveRecord::Migration[7.0]
  def change
    create_table :readers do |t|
      t.integer :reader_id
      t.date :join_date

      t.timestamps
    end
  end
end
