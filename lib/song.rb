class Song

  attr_reader :name, :artist, :genre
  
  @@count = 0
  @@genre_count = {}
  @@artist_count = {}
  
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    
    @@count += 1

    if @@genre_count.keys.include?(genre)
      @@genre_count[genre] += 1
    else
      @@genre_count[genre] = 1
    end
    
    if @@artist_count.keys.include?(artist)
      @@artist_count[artist] += 1
    else
      @@artist_count[artist] = 1
    end
    
    @@genres << genre
    @@artists << artist
  end

  def self.count
    @@count
  end

  def self.artists
    res = []
    
    @@artists.each do |e|
      if !(res.include?(e))
        res << e
      end
    end
    res
  end

  def self.genres
    res = []
    
    @@genres.each do |e|
      if !(res.include?(e))
        res << e
      end
    end
    res
  end

  def self.artist_count
    @@artist_count
  end

  def self.genre_count
    @@genre_count
  end
end
