class Song
  attr_reader :name, :artist, :genre
  attr_accessor :count
  @@count = 0
  @@artists = []
  @@genres = []
  @@genresunique = []
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end

  def Song.count
    @@count
  end

  def Song.artists
    @@artists.uniq!
  end

  def Song.genres
    @@genres.uniq!
  end

  def Song.genre_count
    Hash[@@genres.map { |element|
        [element, @@genres.count(element)]
    }]
  end

  def Song.artist_count
    Hash[@@artists.map { |element|
        [element, @@artists.count(element)]
    }]
  end
end
