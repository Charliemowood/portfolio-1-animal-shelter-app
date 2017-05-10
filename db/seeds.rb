require_relative('../models/owner.rb')
require_relative('../models/cat.rb')
require('pry-byebug')

Cat.delete_all()
Owner.delete_all()


owner1 = Owner.new({
  'name' => 'Garry Potter'
  })
owner1.save()

owner2 = Owner.new({
  'name' => 'Steve Jobs'
  })
owner2.save()

owner3 = Owner.new({
  'name' => 'Bertie Lissie'
  })
owner3.save()

owner4 = Owner.new({
  'name' => 'Jana Masarkova',
  })
owner4.save()

owner5 = Owner.new({
  'name' => 'For Adoption'
  })
owner5.save()


cat1 = Cat.new({
  'arrival_date' => '2017-05-20',
   'name' => 'Camomile',
   'type' => 'tabby',
   'adopted' => 'adopted',
   'picture' => '/images/camomile.jpg',
   'owner' => owner2.id
  })
cat1.save()

cat2 = Cat.new({
  'arrival_date' => '2017-05-10',
   'name' => 'Cookie',
   'type' => 'mottled',
   'adopted' => 'for adoption',
   'picture' => '/images/cookie.jpg',
   'owner' => owner5.id
  })
cat2.save()

cat3 = Cat.new({
  'arrival_date' => '2017-05-20',
   'name' => 'Fig',
   'type' => 'white',
   'adopted' => 'for adoption',
   'picture' => '/images/fig.jpg',
   'owner' => owner5.id
  })
cat3.save()

cat4 = Cat.new({
  'arrival_date' => '2017-04-20',
   'name' => 'Muffin',
   'type' => 'white/black',
   'adopted' => 'for adoption',
   'picture' => '/images/muffin.jpg',
   'owner' => owner5.id
  })
cat4.save()

cat5 = Cat.new({
  'arrival_date' => '2017-05-01',
   'name' => 'Lady Sissi',
   'type' => 'white/black',
   'adopted' => 'adopted',
   'picture' => '/images/lady_sissi.jpg',
   'owner' => owner1.id
  })
cat5.save()



binding.pry
nil
