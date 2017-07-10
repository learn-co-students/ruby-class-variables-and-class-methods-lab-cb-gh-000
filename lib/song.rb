class Song
  @@count = 0
  @@genres = []
  @@artists = []
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@artists << artist
    @@genres << genre
    @@count += 1
  end
  def self.count
    return @@count
  end
  def self.genres
    return @@genres.uniq
  end
  def self.genre_count
    count = 0
    num_of_times = 0
    results = {}
    while count < @@genres.count
      genre = @@genres[count]
      num_of_times = @@genres.count(genre)
      results[genre] = num_of_times
      count += 1
    end
    return results
  end
  def self.artists
    return @@artists.uniq
  end
  def self.artist_count
    count = 0
    num_of_times = 0
    results = {}
    while count < @@artists.count
      artist = @@artists[count]
      num_of_times = @@artists.count(artist)
      results[artist] = num_of_times
      count += 1
    end
    return results
  end
  def name=(song_name)
    @name = song_name
  end
  def name
    @name
  end
  def artist=(song_artist)
    @artist = song_artist
  end
  def artist
    @artist
  end
  def genre=(song_genre)
    @genre = song_genre
  end
  def genre
    @genre
  end
end
