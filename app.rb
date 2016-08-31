require 'sinatra/base'
require 'shotgun'



class Battle < Sinatra::Base

set :session_secret, 'super secret'

  get '/' do
    erb(:index)
  end

  post '/names' do
    @name1 = params[:name1]
    @name2 = params[:name2]
    erb(:play)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
