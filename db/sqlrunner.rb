require('pg')

class SqlRunner
  
  def SqlRunner.run(sql)
    begin

      db = PG.connect({dbname: 'animal_shelter', host: 'localhost'})
      db.exec(sql)
    ensure
      db.close()
    end
  end

end
