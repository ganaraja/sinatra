require 'sinatra'

get '/halt' do
  'You will not see this output.'
  halt 500
end


Example 2-8. Careless regular expressions can lead to greedy bugs
require 'sinatra'

get %r{/(sp|gr)eedy} do
  "You got caught in the greedy route!"
end

get '/speedy' do
  "No one calls me :("
end

get '/greedy' do
  "No one calls me either!"
end

['/one','/two','/three'].each do |route|
  get route do
    params[:name] +' ' + params[:password]
  end
 end

 Example 2-6. Using wildcards in a route
 require 'sinatra'
 get '/*' do
 "You passed in #{params[:splat]}"
 end


=begin
get '/' do
  "Triggered via GET Request"
end

post '/' do
  "Triggered via POST request"
end

put '/' do
  "Triggered via PUT Request"
end

delete '/' do
  "Triggered via DELETE request"
end

patch '/' do
  "Triggered via PATCH Request"
end

options '/' do
  "Triggered via OPTIONS request"
end

=end
