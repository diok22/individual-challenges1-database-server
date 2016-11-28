require 'sinatra/base'

class DatabaseServer < Sinatra::Base

  get '/' do
    'Hello DatabaseServer!'
  end

  get '/set' do
    @memory_array = []
    key_symbol = params.keys[0].to_sym
    value_symbol = params.values[0].to_sym
    hash = {}
    hash.store(key_symbol, value_symbol)
    p hash
    @memory_array << hash
    p @memory_array
  end

  



  # start the server if ruby file executed directly
  run! if app_file == $0
end
