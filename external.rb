require 'sinatra'
#default is views/*.erb

set :views, File.dirname(__FILE__)
get '/test' do
  begin
    erb :test
  rescue => e
    p e.message
  end
end
