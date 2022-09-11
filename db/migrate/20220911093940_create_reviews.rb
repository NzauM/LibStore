class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.integer :book_id
      t.integer :user_id
      t.string :review_comment
    end
  end
end
