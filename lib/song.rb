class Song
  @@count, @@artists, @@genres = 0, [], []
  attr_reader :name, :artist, :genre

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
      @@artists.reduce([]) { |memo, obj|
        (i=memo.bsearch_index{ |e|
          e[0] == obj
        }) ? memo[i][1] += 1 : memo << [obj, 1]
        memo
      }.to_h
    end
    def genre_count
      @@genres.reduce([]) { |memo, obj|
        (i=memo.bsearch_index{ |e|
          e[0] == obj
        }) ? memo[i][1] += 1 : memo << [obj, 1]
        memo
      }.to_h
    end
  end

  def initialize(name, artist, genre)
    @name, @artist, @genre = name, artist, genre
    @@artists << @artist
    @@genres << @genre
    @@count += 1
  end
end