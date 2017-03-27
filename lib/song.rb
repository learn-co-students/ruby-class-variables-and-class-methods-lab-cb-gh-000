class Song

  @@count = 0
  @@artists = []
  @@genres = []

  class << self
    def count
      @@count
    end
    def artists
      @@artists.uniq
    end
    def genres
      @@genres.uniq
    end
    def artist_count
      hash = Hash.new{0}
      @@artists.each do |artist|
        hash[artist]+=1
      end
      hash
    end
    def genre_count
      hash = Hash.new{0}
      @@genres.each do |genre|
        hash[genre]+=1
      end
      hash
    end
  end

  attr_accessor :name,:artist,:genre
  def initialize name,artist,genre
    @name = name
    @artist    = artist
    @genre     = genre
    @@count+=1
    @@artists << artist
    @@genres << genre
  end
end
