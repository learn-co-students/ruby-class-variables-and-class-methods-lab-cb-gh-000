class Song

  attr_reader :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []


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

  def self.artists
    ret = []
    @@artists.each do |artist|
      if !ret.include?(artist)
        ret << artist
      end
    end
    ret
  end

  def self.genres
    ret = []
    @@genres.each do |genre|
      if !ret.include?(genre)
        ret << genre
      end
    end
    ret
  end

  def self.genre_count
    ret = {}
    self.genres.each do |genre1|
      sum = 0
      @@genres.each do |genre2|
        if genre1 == genre2
          sum += 1
        end
      end
      ret[genre1] = sum
    end
    ret
  end

  def self.artist_count
    ret = {}
    self.artists.each do |artist1|
      sum = 0
      @@artists.each do |artist2|
        if artist1 == artist2
          sum += 1
        end
      end
      ret[artist1] = sum
    end
    ret
  end
end
