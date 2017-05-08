require_relative('../db/sqlrunner.rb')
require_relative('./cat.rb')

class Owner

  attr_reader :id, :name, :cat_id

  def initialize(params)
    @id = params['id'].to_i
    @name = params['name']
    @cat_id = params['cat'].to_i
  end

  def Owner.delete_all()
    sql = "DELETE FROM owners";
    SqlRunner.run(sql)
  end

def cat()
  sql = "SELECT * FROM cats WHERE id = #{@cat_id}"
  result = SqlRunner.run(sql)
  return Cat.new(result.first)
end


  def save()
    sql = "INSERT INTO owners (name, cat) VALUES ('#{@name}', #{@cat_id}) RETURNING id"
    result = SqlRunner.run(sql).first
    @id = result['id'].to_i()
  end

  def Owner.find(id)
    sql = "SELECT * FROM owners WHERE id=#{id}"
    results = SqlRunner.run(sql)
    return Owner.new(results.first)
  end

  def Owner.all()
    sql = "SELECT * FROM owners"
    results = SqlRunner.run(sql)
    results.map {|hash| Owner.new(hash)}
  end
end
