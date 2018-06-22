class Song
  attr_accessor :name, :genre
  attr_reader :artist
  @@count = 0
  @@artists = []
  @@genres = []
  @@genre_hash = {}

  def initialize(name,artist,genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end


  def self.count
    @@count
  end

  def artist=(artist)
    @artist = artist
    @@artists << artist
  end

  def self.artists
    return @@artists.uniq
  end

  def self.genres
    return @@genres.uniq
  end

  def self.genre_count
    genre_hash = {}
    @@genres.each do |genre|
      if genre_hash.key?(genre)
        genre_hash[genre] += 1
      else
        genre_hash[genre] = 1
      end
    end
    return genre_hash
  end

  def self.artist_count
    artist_hash = {}
    @@artists.each do |artist|
      if artist_hash.key?(artist)
        artist_hash[artist] += 1
      else
        artist_hash[artist] = 1
      end
    end
    return artist_hash
  end

end
