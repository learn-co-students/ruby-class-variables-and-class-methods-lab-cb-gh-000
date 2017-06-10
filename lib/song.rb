class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@genres = []
  @@artists = []
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

      @@genres.push(genre)


      @@artists.push(artist)

    @@count += 1
  end

  def self.count
    @@count
  end

  def self.genres
    genres_temp = []

    @@genres.each do |element|
      if genres_temp.include?(element) == false
        genres_temp.push(element)
      end
    end

    genres_temp
  end

  def self.artists
    artists_temp = []

    @@artists.each do |element|
      if artists_temp.include?(element) == false
        artists_temp.push(element)
      end
    end

    artists_temp
  end

  def self.genre_count
    count = Hash.new(0)
    @@genres.each do |genre|
      count[genre] += 1
    end

    count
  end

  def self.artist_count
    count = Hash.new(0)
    @@artists.each do |artist| 
      count[artist] += 1
    end

    count
  end
end
