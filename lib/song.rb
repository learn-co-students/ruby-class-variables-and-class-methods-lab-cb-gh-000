class Song

    @@count = 0
    @@artists = []
    @@genres = []

    attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)
        @@genres<< genre
        @@artists<< artist
        @@count += 1

        @name = name
        @artist = artist
        @genre = genre
    end
    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        genre_count = {}
        @@genres.collect do |genre|
            genre_count[genre] = @@genres.count(genre)
        end
        genre_count
    end

    def self.artists
        @@artists.uniq
    end

    def self.artist_count
        artist_count = {}
        @@artists.collect do |artist|
            artist_count[artist] = @@artists.count(artist)
        end
        artist_count
    end


end
