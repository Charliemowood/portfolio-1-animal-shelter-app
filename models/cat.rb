require_relative('../db/sqlrunner.rb')

class Cat

  attr_reader :id, :arrival_date, :name, :type, :adopted, :picture

  def initialize(params)
    @id = params['id'].to_i if params['id']
    @arrival_date = params['arrival_date']
    @name = params['name']
    @type = params['type']
    @adopted = params['adopted']
    @picture = params['picture']
  end

  def Cat.delete_all()
    sql = "DELETE FROM cats";
    SqlRunner.run(sql)
  end

  def save()
    sql = "INSERT INTO cats (
    arrival_date,
    name,
    type,
    adopted,
    picture)
    VALUES (
    '#{@arrival_date}',
    '#{@name}',
    '#{@type}',
    '#{@adopted}',
    '#{@picture}')
    RETURNING id"
    result = SqlRunner.run(sql)
    hash = result.first
    @id = hash['id'].to_i()
  end

  def Cat.all()
    sql = "SELECT * FROM cats;"
    results = SqlRunner.run(sql)
    results.map {|hash| Cat.new(hash)}
  end

  def Cat.find(id)
    sql = "SELECT * FROM cats WHERE id=#{id}"
    result = SqlRunner.run(sql)
    return Cat.new(result.first)
  end
end
