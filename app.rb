require 'sinatra'

get '/' do
  'Hello world!'
end

get '/api' do
  "#{params.to_s}"
end
