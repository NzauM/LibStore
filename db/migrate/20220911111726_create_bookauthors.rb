class CreateBookauthors < ActiveRecord::Migration[7.0]
  def change
    create_table :bookauthors do |t|
      t.integer :book_id
      t.integer :author_id
    end
  end
end
