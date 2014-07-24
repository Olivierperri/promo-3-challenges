require 'sqlite3'

# opens the database
database_path = File.join(File.dirname(__FILE__), 'db/jukebox.sqlite')
db = SQLite3::Database.new(database_path)

def number_of_rows(db, table_name)
  #TODO: count number of rows in table table_name
 array = db.execute("SELECT COUNT(*) FROM #{table_name}")
  array[0][0]
end

def sorted_artists(db)
 db.execute("SELECT name FROM Artist ORDER BY name ASC;").flatten
  #TODO: return array of artists' names sorted alphabetically
end

def love_tracks(db)
  db.execute("SELECT name FROM Track WHERE Name LIKE '%Love%';").flatten
  #TODO: return array of love songs
end

def long_tracks(db, min_length)
  lenght = min_length*60*1000
  db.execute("SELECT name FROM Track WHERE Milliseconds < #{lenght}").flatten
  #TODO: return tracks verifying: duration > min_length (minutes)
end

p number_of_rows(db, "Artist")
p sorted_artists(db)
p love_tracks(db)
p long_tracks(db,2)