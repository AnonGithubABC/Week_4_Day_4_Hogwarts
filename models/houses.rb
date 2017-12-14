require_relative('../db/sql_runner')

class House

  attr_reader :id
  attr_accessor :name, :logo


  def initialize( options )
    @id = options['id'].to_i
    @name = options['name']
    @logo = options['logo']
  end

  def save
    sql = "INSERT INTO houses (name, logo)
          VALUES ($1, $2)
          RETURNING *"

          values = [@name, @logo]
          house_data = SqlRunner.run(sql, values)
          @id = house_data[0]['id'].to_i
  end

#-------------CLASS METHODS----------------#

  def self.delete_all()
    sql = "DELETE FROM houses;"
    SqlRunner.run(sql)
  end


end
