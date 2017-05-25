class Song

  @@count = 0
  @@artists = []  # This ones will contain duplicates
  @@genres = []   # This ones will contain duplicates

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    count = {}
    @@genres.each do |genre|
      if count[genre]
        count[genre] += 1
      else
        count[genre] = 1
      end
    end
    count
  end

  def self.artist_count
    count = {}
    @@artists.each do |artist|
      if count[artist]
        count[artist] += 1
      else
        count[artist] = 1
      end
    end
    count
  end


  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@count += 1
    @@artists << artist
    @@genres << genre
  end

end
