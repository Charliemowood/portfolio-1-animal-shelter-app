require_relative('../db/sqlrunner.rb')

class Owner

  attr_reader :id, :name, :cat

  def initialize(params)
    @id = params['id'].to_i
    @name = params['name']
    @cat = params['cat'].to_i
  end

  def Owner.delete_all()
    sql = "DELETE FROM owners";
    SqlRunner.run(sql)
  end

  def save()
    sql = "INSERT INTO owners (name) VALUES ('#{@name}') RETURNING id"
    result = SqlRunner.run(sql).first
    @id = result['id'].to_i()
  end
end
