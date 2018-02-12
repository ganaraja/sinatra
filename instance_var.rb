require 'sinatra'

get '/home/:name' do
  @name = params[:name]
  erb :home
end
