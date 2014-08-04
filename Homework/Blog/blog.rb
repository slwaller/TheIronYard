require 'sinatra'
require 'data_mapper'

=begin

GET - Read

PUT - Update

POST - Create

DELETE - Destroy

=end

DataMapper.setup(
  :default,
  'mysql://root@localhost/entry'
)

class Entry
  include DataMapper::Resource
  property :id, Serial
  property :title, String
  property :entry, String
end

DataMapper.finalize.auto_upgrade!


get '/' do
  @entry = Entry.all
  erb :index, layout: :layout
end

get '/create_entry' do
  erb :create_entry, layout: :layout
end

post '/create_entry' do
 @entry = Entry.create params[:entry]
 redirect to('/')
end

get '/edit_entry/:id' do
  @entry = Entry.get params[:id]
  erb :edit_entry, layout: :layout
end

put '/edit_entry/:id' do
  @entry = Entry.get params[:id]
  @entry.update params[:entry]
  redirect to("/")
end

get '/show_entry/:id' do
  @entry = Entry.get params[:id]
  erb :show_entry, layout: :layout
end

delete '/delete_entry/:id' do
  @entry = Entry.get params[:id]
  @entry.destroy
  redirect to("/")
end





















