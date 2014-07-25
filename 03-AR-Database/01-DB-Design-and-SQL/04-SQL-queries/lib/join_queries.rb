require 'sqlite3'

# opens the database
DATABASE_PATH = "db/jukebox.sqlite"
db = SQLite3::Database.new(DATABASE_PATH)

def detailed_tracks(db)
db.execute("SELECT t.name, ar.Name, al.Title
FROM Track t
JOIN Album al ON (t.AlbumId = al.AlbumId)
JOIN Artist ar ON (al.ArtistId = ar.ArtistId);")
  # TODO: return the list of tracks with their album and artist
end

def stats_on(db, category)
number = db.execute("SELECT count(Track.TrackId), avg(Track.Milliseconds)
    FROM Track
    JOIN Genre ON Track.GenreId = Genre.GenreId
    WHERE Genre.Name like '%#{category}%'")

  hash = {}

  hash[:category] = category
  hash[:number_of_songs] = number[0][0]
  hash[:avg_length] = number [0][1]

  return hash
  #TODO: For the given category of music, return the number of tracks and the average song length (as a stats hash)
end

def top_five_rock_artists(db)
db.execute("SELECT Artist.Name, Count(Track.TrackId) AS nb_track
              FROM Artist
              JOIN Album ON Album.ArtistId = Artist.ArtistId
              JOIN Track ON Track.AlbumId = Album.ArtistId
              JOIN Genre ON Genre.GenreId = Track.GenreId
              WHERE Genre.Name like 'rock'
              GROUP BY Artist.Name
              ORDER BY nb_track DESC LIMIT 0,5")

    )
  #TODO: return list of top 5 rock artists
end

p detailed_tracks(db)