class ApplicationController < Sinatra::Base 

    get '/' do
        '<h1>hey there</h1>'
    end

    get '/books' do
        allbooks = Book.all
        allbooks.to_json(include: :authors)
    end

    get '/authors' do
        allauthors = Author.all
        allauthors.to_json(include: :books)
    end


end