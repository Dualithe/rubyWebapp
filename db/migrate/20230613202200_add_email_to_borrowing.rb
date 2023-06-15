class AddEmailToBorrowing < ActiveRecord::Migration[7.0]
  def change
  	    change_table :borrowings do |t|
      t.string :email
      end
  end
end
