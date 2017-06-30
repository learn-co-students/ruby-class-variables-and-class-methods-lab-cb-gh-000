class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @artist = artist
    @name = name
    @genre = genre

    @@count += 1
    @@genres << genre
    @@artists << artist
  end

  def self.count
    return @@count
  end

  def self.genres
    return @@genres.uniq
  end

  def self.artists
    return @@artists.uniq
  end

  def self.genre_count
    uniq_genres = @@genres.uniq
    counts = Hash[uniq_genres.map {|item| [item, 0]}]

    @@genres.each do |element|
      counts[element] += 1
    end

    return counts

  end

  def self.artist_count
    uniq_artists = @@artists.uniq
    counts = Hash[uniq_artists.map {|item| [item, 0]}]

    @@artists.each do |element|
      counts[element] += 1
    end

    return counts

  end

end
