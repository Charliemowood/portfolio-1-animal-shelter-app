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
  @cat = Cat.find(params[:id])
  @owners = Owner.all()
  @cats = Cat.all()
  erb(:"cat/edit")
end

# CREATE
post '/cats/:id' do
  Cat.new(params).update
  erb(:"cat/update")
end

# DESTROY
post '/cats/:id/delete' do
  @cat = Cat.find(params[:id])
  @cat.delete()
  erb(:"cat/destroy")
end
