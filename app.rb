require 'sinatra/base'

class DatabaseServer < Sinatra::Base
  get '/' do
    'Hello DatabaseServer!'
    @memory_array = []
  end

  get '/set' do
    p params
    p @memory_array
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
