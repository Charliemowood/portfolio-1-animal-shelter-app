require_relative('../models/owner.rb')
require_relative('../models/cat.rb')
require('pry-byebug')

Owner.delete_all()

owner1 = Owner.new({
  'name' => 'Garry Potter'
  })

owner1.save()

cat1 = Cat.new({
  'arrival_date' => '2017-05-20',
   'name' => 'Camomile',
   'type' => 'tabby',
   'adopted' => 'adopted',
   'picture' => '/images/Camomile.jpg'
  })
cat1.save()

binding.pry
nil
