class CreateLibraries < ActiveRecord::Migration[7.0]
  def change
    create_table :libraries do |t|
      t.integer :library_id
      t.string :name
      t.string :adress

      t.timestamps
    end
  end
end
