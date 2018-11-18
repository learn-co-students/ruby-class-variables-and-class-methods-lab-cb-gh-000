class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []


  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@genres << genre
    @@artists << artist
    @@count += 1

  end

  def self.count
    @@count
  end

  def self.artists
    result = []
    @@artists.each do |artist|
      if !result.include? artist
        result << artist
      end
    end
    result
  end

  def self.genres
    result = []
    @@genres.each do |genre|
      if !result.include? genre
        result << genre
      end
    end
    result
  end

  def self.genre_count
    result = {}
    @@genres.each do |genre|
      if result.include? genre
        result[genre] += 1
      else
        result[genre] = 1
      end
    end
    result
  end

  def self.artist_count
    result = {}
    @@artists.each do |artist|
      if result.include? artist
        result[artist] += 1
      else
        result[artist] = 1
      end
    end
    result
  end


end
