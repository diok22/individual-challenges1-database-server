require 'sinatra/base'
require_relative './lib/models/key_in_memory'
require_relative './lib/models/value_in_memory'


class DatabaseServer < Sinatra::Base

  enable :sessions

  get '/' do
    'Hello DatabaseServer!'
  end

  get '/set' do
    p params.keys[0].to_sym
    key = KeyInMemory.new(params.keys[0].to_sym)
    value = ValueInMemory.new(params.values[0].to_sym)
    hash = {}
    hash.store(key, value)
    array = Array.new
    session.push(array)
    p session
    redirect '/'
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
