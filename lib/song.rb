class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@genres = []
  @@artists = []
  def initialize(name, artis, genre)
    @name = name
    @artist = artis
    @genre = genre
    @@count += 1
    @@genres << @genre
    #if !@@artists.include?(@artist)
    @@artists << @artist
    #end
  end

  def self.count
    @@count
  end

  def self.genres
    temp = {}
    @@genres.each do |a|
      temp[a] = false
    end

    new_array = []

    @@genres.each do |a|
      if temp[a] == false
        temp[a] = true
        new_array.push(a)
      end
    end
    new_array
  end

  def self.artists
    temp = {}
    @@artists.each do |a|
      temp[a] = false
    end

    new_array = []

    @@artists.each do |a|
      if temp[a] == false
        temp[a] = true
        new_array.push(a)
      end
    end
    new_array
  end

  def self.artist_count
    result = {}
    @@artists.each do |artist|
      result[artist] = 0
    end
    @@artists.each do |artist|
      result[artist] +=1
    end
    result
  end

  def self.genre_count
    result = {}
    @@genres.each do |artist|
      result[artist] = 0
    end
    @@genres.each do |artist|
      result[artist] +=1
    end
    result
  end

end
