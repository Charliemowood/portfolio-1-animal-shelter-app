require_relative('../models/owner.rb')
require('pry-byebug')

Owner.delete_all()

owner1 = Owner.new({
  'name' => 'Garry Potter'
  })

owner1.save()

binding.pry
nil
