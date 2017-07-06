class Song
  @@count = 0
  @@artists = []
  @@genres = []

  attr_accessor :name , :artist , :genre

  def initialize(name , artist , genre)
      @@count+=1
      @name = name
      @artist = artist
      @genre = genre
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
    res = {}
    @@genres.uniq.each{|genre| res[genre] = @@genres.count genre}
    res
  end

  def self.artist_count
    res = {}
    @@artists.uniq.each{|genre| res[genre] = @@artists.count genre}
    res
  end

end
