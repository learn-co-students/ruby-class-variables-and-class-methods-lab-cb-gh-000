class Song

  attr_accessor :name, :artist, :genre
  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist,genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres.push(genre)
    @@artists.push(artist)
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
    general = {}
    @@genres.each do |element|
      if general.include?(element)
        general[element] += 1
      else
        general[element] = 1
      end
    end
    general.sort.to_h
  end

  def self.artist_count
    artistic = {}
    @@artists.each do |element|
      if artistic.include?(element)
        artistic[element] += 1
      else
        artistic[element] = 1
      end
    end
    artistic.sort.to_h
  end

end
