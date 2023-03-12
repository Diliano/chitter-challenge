require_relative 'peep'

class PeepRepository

  # Selecting all records
  # No arguments
  def all
    peeps = []
    # Executes the SQL query:
    sql = 'SELECT id, content, date_time, user_id FROM peeps;'

    result_set = DatabaseConnection.exec_params(sql, [])
    
    result_set.each do |record|
      peep = Peep.new
      peep.id = record['id'].to_i
      peep.content = record['content']
      peep.date_time = record['date_time']
      peep.user_id = record['user_id'].to_i
      peeps << peep
    end
    # Returns an array of Peep objects.
    return peeps
  end

  # Selects a single record by its ID
  # One argument: the id (number)
  def find(id)
    # Executes the SQL query:
    # SELECT id, content, date_time, user_id FROM peeps WHERE id = $1;

    # Returns a single Peep object.
  end

  # Creates a new record
  # One argument: a new Peep Object
  def create(peep)
    # Executes the SQL query:
    # INSERT INTO peeps (content, date_time, user_id) VALUES ($1, $2, $3);

    # Does not return a value
  end

  # Deletes a record
  # One argument: the id (number)
  def delete(id)
    # Executes the SQL query:
    # DELETE FROM peeps WHERE id = $1;
    
    # Does not return a value
  end

end