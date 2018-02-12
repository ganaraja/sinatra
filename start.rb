require 'sinatra'

before do
  @start = Time.now
end


get '/' do
  start1 = Time.now
  "#{@start}   #{start1}"
end
