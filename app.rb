require 'sinatra'
require './zenith'
require "sinatra/reloader" if development?

also_reload './zenith'

get '/' do
  'Hello world!'
end

get '/api' do
  content_type 'text/plain'
  output = Zenith.expand params[:expand]
end
