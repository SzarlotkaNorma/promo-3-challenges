require 'sqlite3'

# opens the database
DATABASE_PATH = "db/jukebox.sqlite"
db = SQLite3::Database.new(DATABASE_PATH)

def detailed_tracks(db)
  # TODO: return the list of tracks with their album and artist
  sql_query = "
    SELECT Track.Name, Album.Title, Artist.Name
    FROM Track
    JOIN Album ON Title.AlbumId = Album.AlbumId
    JOIN Artist ON Album.ArtistId = Artist.ArtistId
  "
  rows = db.execute(sql_query)

  rows
end

def stats_on(db, category)
  #TODO: For the given category of music, return the number of tracks and the average song length (as a stats hash)
end

def top_five_rock_artists(db)
  #TODO: return list of top 5 rock artists
end