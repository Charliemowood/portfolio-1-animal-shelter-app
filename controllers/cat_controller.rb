require('sinatra')
require('sinatra/contrib/all')
require_relative('../models/cat.rb')
require_relative('../models/owner.rb')

# INDEX
get '/cats' do
  @cats = Cat.all()
  erb(:"cat/index")
end

# NEW
get '/cats/new' do
  @owners = Owner.all()
  erb(:"cat/new")
end

# CREATE
post '/cats' do
  @cat = Cat.new(params)
  @cat.save()
  erb (:"cat/create")
end

# SHOW
get '/cats/:id' do
  @cat = Cat.find(params[:id])
  erb(:"cat/show")
end

# EDIT
get '/cats/:id/edit' do
  @cat = Cat.find (params[:id])
  @owners = Owner.all()
  erb(:"cat/edit")
end
