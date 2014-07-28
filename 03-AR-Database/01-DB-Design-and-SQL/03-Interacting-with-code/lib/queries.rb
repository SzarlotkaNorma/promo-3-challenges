require 'sqlite3'

#locates the database file
database_path = File.join(File.dirname(__FILE__), 'db/jukebox.sqlite')

#opens a connection to database
db = SQLite3::Database.new(database_path)

def number_of_rows(db, table_name)
  #TODO: count number of rows in table table_name
  sql_query = "SELECT COUNT(*) FROM #{table_name}"
  rows = db.execute(sql_query)
  first_line = rows[0]
  first_column = first_line[0]
  return first_column
end

def sorted_artists(db)
  #TODO: return array of artists' names sorted alphabetically
  sql_query = "SELECT Name FROM Artist ORDER BY Name ASC"
  rows = db.execute(sql_query)

  rows.flatten
end

def love_tracks(db)
  #TODO: return array of love songs
  sql_query = "SELECT Name FROM Track WHERE Name LIKE '%love%'"
  rows = db.execute(sql_query)
  rows.flatten
end

def long_tracks(db, min_length)
  #TODO: return tracks verifying: duration > min_length (minutes)
  sql_query = "SELECT Name FROM Track WHERE Milliseconds > #{min_length * 60 * 1000}"
  rows = db.execute(sql_query)
  rows.flatten
end
