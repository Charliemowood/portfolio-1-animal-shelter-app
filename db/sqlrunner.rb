require('pg')

class SqlRunner
  # db = PG.connect({dbname: 'animal_shelter', host: 'localhost'})
  def SqlRunner.run(sql)
    begin
      db = PG.connect({dbname: 'd7b7l1jrc1pecf',
        host: 'ec2-23-21-224-199.compute-1.amazonaws.com',
        port: 5432,
        user: 'rqxbuvaliluyjr',
        password: 'bd8dac258d4820ba82056b89db735da976b6d349e8f76111f5a8c1416a32cc72'})
      db.exec(sql)
    ensure
      db.close()
    end
  end

end
