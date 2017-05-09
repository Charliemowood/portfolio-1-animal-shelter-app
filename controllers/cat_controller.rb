require('sinatra')
require('sinatra/contrib/all')
require_relative('../models/cat.rb')
require_relative('../models/owner.rb')

get '/cats' do
  @cats = Cat.all()
  erb(:"cat/index")
end

get '/cats/new' do
  @owners = Owner.all()
  erb(:"cat/new")
end

post '/cats' do
  @cat = Cat.new(params)
  @cat.save()
  erb (:"cat/create")
end
