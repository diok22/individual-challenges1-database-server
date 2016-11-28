require 'sinatra/base'
require 'json'
# require_relative './lib/models/key_in_memory'
# require_relative './lib/models/value_in_memory'
# require_relative './lib/models/storage_in_memory'



class DatabaseServer < Sinatra::Base
  enable :sessions
  set :port, 4000

  get '/' do
    'Hello DatabaseServer!'
    erb :index
  end

  get '/set' do
    get '/set' do
      params.each {|k, v| session[:"#{k}"] = v}
      erb :index
    end
  end

  get '/get' do
    content_type :json
    @key = params[:k]
    @value = session[:"#{@key}"]
    {"#{@key}": @value}.to_json
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
