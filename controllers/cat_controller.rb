require('sinatra')
require('sinatra/contrib/all')
require_relative('../models/cat.rb')

get '/cats' do
  @cats = Cat.all()
  erb(:"cat/index")
end
