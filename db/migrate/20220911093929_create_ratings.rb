class CreateRatings < ActiveRecord::Migration[7.0]
  def change
    create_table :ratings do |t|
      t.integer :book_id
      t.integer :user_id
      t.integer :score
    end
  end
end
