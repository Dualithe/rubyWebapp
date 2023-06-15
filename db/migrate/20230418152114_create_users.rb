class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.integer :user_id
      t.integer :library_id
      t.string :name
      t.string :surname
      t.integer :pesel

      t.timestamps
    end
  end
end
