require 'sinatra'
require 'Faker'


get '/' do
  @name = Faker::Name.name
  erb :index
end

get '/the_food' do
  erb :the_food
end

get '/the_life' do
  erb :the_life
end

get '/layout1' do
  erb :the_life, layout: :layout
end

get '/layout2' do
  erb :the_food, layout: :layout
end