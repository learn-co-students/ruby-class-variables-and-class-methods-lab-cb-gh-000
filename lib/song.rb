class Song

  @@count = 0
  @@genres = []
  @@artists = []

  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @@count += 1
    @@artists << artist
    @name = name
    @genre = genre
    @@genres << genre
    @artist = artist
  end

  def Song.count
    @@count
  end

  def Song.artists
    @@artists.uniq
  end

  def Song.genres
    ar = @@genres
    ar.uniq
  end

  def Song.genre_count
    ar = @@genres.uniq
    h = Hash.new
    count = 0
    ar.each do |gen|
      count = 0
      @@genres.each do |c|
        if c == gen
          count += 1
        end
      end
      h[gen] = count
    end
    h
  end

  def Song.artist_count
    ar = @@artists.uniq
    h = Hash.new
    count = 0
    ar.each do |a|
      count = 0
      @@artists.each do |b|
        if a == b
          count += 1
        end
      end
      h[a] = count
    end
    h
  end

end
