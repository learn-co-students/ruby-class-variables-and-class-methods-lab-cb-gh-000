class Song
  attr_accessor :artist, :name, :genre

  @@count = 0
  @@genres = []
  @@artists = []
  def initialize(name,artist,genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count+=1
    @@genres << genre
    @@artists << artist
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
    genre_count = {}
    genre_available = @@genres.uniq
    genre_available.each do  |main_genre|
      counter = 0
      @@genres.each do |genre|
        if main_genre == genre
          counter +=1
        end
        genre_count[main_genre] = counter
      end
    end
    genre_count
  end

  def self.artist_count
    artist_count = {}
    artist_available = @@artists.uniq
    artist_available.each do  |artist|
      counter = 0
      @@artists.each do |song|
        if artist == song
          counter +=1
        end
        artist_count[artist] = counter
      end
    end
    artist_count
  end


end
