5.times do |num|
    Book.create(title: Faker::Book.title, year_published: rand(1999..2022), genre_id: num+1, is_borrowed: 0)
end

5.times do 
    User.create(name: Faker::Name.name)
end

5.times do 
    Genre.create(name: Faker::Book.genre)
end

5.times do 
    Author.create(name: Faker::Book.author, bio: Faker::Name.name_with_middle)
end

# Loop through all books creating book-author records

books = Book.all
books.map do |book|
    Bookauthor.create(book_id: book.id, author_id: rand(1..5))
    Bookauthor.create(book_id: book.id, author_id: rand(1..5))
end
# Create book-author records with random values (rand) between 1 and 5








