require_relative('../db/sqlrunner.rb')

class Cat

  attr_reader :id, :arrival_date, :name, :type, :adopted, :picture

  def initialize(params)
    @id = params['id'].to_i
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
    result = SqlRunner.run(sql).first
    @id = result['id'].to_i()
  end
end
