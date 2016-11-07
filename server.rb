require 'sinatra'
require 'pry'

$default_answers = [
  "It's certain",
  "It's decidedly so",
  "Without a doubt",
  "Yes, definitely",
  "You may rely on it",
  "As I see it, yes",
  "Most likely",
  "Outlook good",
  "Yes",
  "Signs point to yes",
  "Try again",
  "Ask me later",
  "Cannot predict now",
  "Do not count on it",
  "My sources say no",
  "My reply is no",
  "Outlook isn't so good",
  "Very doubtful"
]

$clone = $default_answers.clone

get '/' do
  erb :index
end

post '/' do
  @question = "#{params[:info]}"
  erb :index
end

get '/ask' do
  erb :ask
end

get '/add' do
  erb :add
end
