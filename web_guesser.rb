require 'sinatra'
require "bundler/setup"
require 'sinatra/reloader'

number = rand(100)
get '/' do
    guess = params['guess'].to_i
    message = check_guess(guess, number)
    erb :index, :locals => { :number => number, :message => message}
end

def check_guess(guess, number)
  if guess == number
    message = 'the secret number is ' + number.to_s
  elsif guess < number
    message = 'too low'
  else
    message = 'too high'
  end
end
