class CreateBorrowlogs < ActiveRecord::Migration[7.0]
  def change
    create_table :borrowlogs do |t|
      t.integer :book_id
      t.integer :user_id
      t.boolean :is_returned
    end
  end
end
