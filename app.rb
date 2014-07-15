require "sinatra"
require "gschool_database_connection"

class App < Sinatra::Base

  def initialize
    super
    @database_connection = GschoolDatabaseConnection::DatabaseConnection.establish(ENV["RACK_ENV"])
  end

  get "/" do
    erb :home
  end
end