require('sinatra')
require('sinatra/contrib/all')
require_relative('../models/owner.rb')
require_relative('../models/cat.rb')

get '/owners' do
  @owners = Owner.all()
  erb (:"owner/index")
end

#NEW - CREATE (get form)
get '/owners/new' do
  @cats = Cat.all()
  @owners = Owner.all()
  erb (:"owner/new")
end

post "/owners" do
  @owner = Cat.new(params)
  @owner.save()
  erb(:create)
end
