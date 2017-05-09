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
