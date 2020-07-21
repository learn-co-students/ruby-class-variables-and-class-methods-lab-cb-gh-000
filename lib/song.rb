class Song

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize name, artist, genre
    @@name = name
    @@artist = artist
    @@genre = genre
    @@artists << artist
    @@genres << genre
    @@count += 1
  end

  attr_accessor :name, :artist, :genre

  def self.count
    @@count
  end

  def genre
    @@genre
  end

  def name
    @@name
  end

  def artist
    @@artist
  end

  def self.genres
    @@genres.uniq!
  end

  def self.artists
    @@artists.uniq!
  end

  def self.genre_count
    histogram = {}
    @@genres.each do |genre|
      if histogram[genre] == nil
        histogram[genre] = 1
      else
        histogram[genre] += 1
      end
    end
  histogram
  end

  def self.artist_count
	    histogram = {}
      @@artists.each do |artist|
        if histogram[artist] == nil
          histogram[artist] = 1
        else
          histogram[artist] += 1
        end
      end
    histogram
  end

end
