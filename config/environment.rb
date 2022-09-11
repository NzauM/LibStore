ENV["RACK_ENV"] ||= "development"

require 'bundler/setup'
Bundler.require(:default, ENV["RACK_ENV"])

# require_relative '../app/models/book'
# require_relative '../app/models/user'
# require_relative '../app/models/genre'
# require_relative '../app/models/rate'
# require_relative '../app/models/author'
# require_relative '../app/models/review'
# require_relative '../app/models/borrowlog'
# require_relative '../app/models/bookauthor'

require_all 'app'