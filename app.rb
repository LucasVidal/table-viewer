require 'sinatra'

class App < Sinatra::Base

  configure do
    set :public_folder, "public"
  end

  get '/get-tables' do
    erb :tables
  end

end
