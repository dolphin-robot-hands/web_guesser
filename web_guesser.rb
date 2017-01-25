require 'sinatra'
require "bundler/setup"
require 'sinatra/reloader'

random = rand(100)

get '/' do
  "the secret number is #{random}"
end
