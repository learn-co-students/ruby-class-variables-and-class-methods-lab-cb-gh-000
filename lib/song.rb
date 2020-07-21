class Song
    @@count = 0
    @@artists = []
    @@genres = []
    attr_reader :name, :artist, :genre

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << artist
        @@genres << genre
    end

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        list = {}
        @@genres.each do |genre|
            list[genre] ||= 0
            list[genre] += 1
        end
        list
    end

    def self.artist_count
        list = {}
        @@artists.each do |artist|
            list[artist] ||= 0
            list[artist] += 1
        end
        list
    end
end
