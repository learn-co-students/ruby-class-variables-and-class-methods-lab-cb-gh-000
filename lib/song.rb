class Song
  attr_reader :name, :artist, :genre

  @@artists = []
  @@genres = []
  @@count = 0
  @@artist_count = {}
  @@genre_count = {}

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@artists.push(artist)
    @@genres.push(genre)
    @@artist_count[artist] = @@artist_count[artist].nil? ? 1 : @@artist_count[artist] += 1
    @@genre_count[genre] = @@genre_count[genre].nil? ? 1 : @@genre_count[genre] += 1
    @@count += 1
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.artist_count
    @@artist_count
  end

  def self.genre_count
    @@genre_count
  end

end
