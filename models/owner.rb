require_relative('../db/sqlrunner.rb')
require_relative('./cat.rb')

class Owner

  attr_reader :id, :name

  def initialize(params)
    @id = params['id'].to_i
    @name = params['name']
  end

  def update()
    sql = "UPDATE owners SET (name) = ('#{@name}')
    WHERE id = #{@id}"
    SqlRunner.run(sql)
  end

  def delete()
    sql = "DELETE FROM owners WHERE id = #{@id}"
    SqlRunner.run(sql)

  end

  def cats()
    sql = "SELECT * FROM cats WHERE owner = #{@id}"
    results = SqlRunner.run(sql)
    results.map {|hash| Cat.new(hash)}
    #array of cat objects
  end

  def Owner.delete_all()
    sql = "DELETE FROM owners";
    SqlRunner.run(sql)
  end

  def save()
    sql = "INSERT INTO owners (name) VALUES ('#{@name}') RETURNING id"
    result = SqlRunner.run(sql)
    hash = result.first
    @id = hash['id'].to_i()
  end

  def Owner.find(id)
    sql = "SELECT * FROM owners WHERE id = #{id}"
    results = SqlRunner.run(sql)
    return Owner.new(results.first)
  end

  def Owner.all()
    sql = "SELECT * FROM owners"
    results = SqlRunner.run(sql)
    results.map {|hash| Owner.new(hash)}
  end

end
