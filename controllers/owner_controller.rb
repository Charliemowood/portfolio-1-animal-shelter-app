require('sinatra')
require('sinatra/contrib/all')
require_relative('../models/owner.rb')
require_relative('../models/cat.rb')

# INDEX
get '/owners' do
  @owners = Owner.all()
  erb (:"owner/index")
end

# NEW
get '/owners/new' do
  @owners = Owner.all()
  erb (:"owner/new")
end

# CREATE
post '/owners' do
  @owner = Owner.new(params)
  @owner.save()
  erb(:"owner/create")
end

# SHOW

get '/owners/:id' do
  @owner = Owner.find(params[:id])
  erb(:"owner/show")
end

# EDIT

get '/owners/:id/edit' do
  @owner = Owner.find(params[:id])
  erb(:"owner/edit")
end

# CREATE

post '/owners/:id' do
  Owner.new(params).update()
  redirect to '/owners'
end

# DELETE

post '/owners/:id/delete' do
  @owner = Owner.find(params[:id])
  @owner.delete()
  redirect to '/owners'
end
