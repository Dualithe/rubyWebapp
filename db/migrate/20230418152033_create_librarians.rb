class CreateLibrarians < ActiveRecord::Migration[7.0]
  def change
    create_table :librarians do |t|
      t.integer :librarian_id
      t.date :hire_date

      t.timestamps
    end
  end
end
