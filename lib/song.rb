class Song
    attr_accessor :name, :artist, :genre
    @@count = 0
    @@genres = []
    @@artists = []



    def initialize(name, artist, genre)
      @name = name
      @artist = artist
      @genre = genre
      @@count += 1
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
      @genre_count = Hash.new { |hash, key| hash[key] = [] }
      @@genres.each do |e|
        if @genre_count.key?(e)
          @genre_count[e] += 1
        else
          @genre_count[e] = 1
        end
      end
      @genre_count
    end

    def self.artist_count
      @artist_count = Hash.new { |hash, key| hash[key] = [] }
      @@artists.each do |e|
        if @artist_count.key?(e)
          @artist_count[e] += 1
        else
          @artist_count[e] = 1
        end
      end
      @artist_count
end
end
