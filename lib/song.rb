class Song
  @@count = 0
  @@genres = []
  @@genre_count = {}
  @@artists = []
  @@artist_count = {}

  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
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

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    @@genres.each do |genre|
      if @@genre_count[genre] == nil
        @@genre_count[genre] = 1
      else
        @@genre_count[genre] += 1
      end
    end
    @@genre_count
  end

  def self.artist_count
    @@artists.each do |genre|
      if @@artist_count[genre] == nil
        @@artist_count[genre] = 1
      else
        @@artist_count[genre] += 1
      end
    end
    @@artist_count
  end

end
