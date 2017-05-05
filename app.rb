require('sinatra')
require('sinatra/contrib/all')
require_relative('controllers/cat_controller.rb')

get '/' do
 erb(:index)
end
