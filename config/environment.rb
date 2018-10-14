ENV['SINATRA_ENV'] ||= "development"

require 'bundler/setup'
Bundler.require(:default, ENV['SINATRA_ENV'])

require './app'

configure :development do
  set :databse, 'sqlite3:db/databse.db'
end
