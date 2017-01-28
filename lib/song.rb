
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
        @uniqueGenres = []
        @@genres.each do |item|
            if @uniqueGenres.count(item) == 0
                @uniqueGenres << item
            end
        end
        return @uniqueGenres
    end

    def self.artists
        @uniqueArtists = []
        @@artists.each do |item|
            if @uniqueArtists.count(item) == 0
                @uniqueArtists << item
            end
        end
        return @uniqueArtists
    end

    def self.genre_count
        genreAlbums = {}
        @@genres.each do |item|
            if genreAlbums.include?(item) == false
                genreAlbums[item] = 1
            elsif genreAlbums.include?(item) == true
                genreAlbums[item] = genreAlbums[item] + 1
            end
        end
        return genreAlbums
    end

    def self.artist_count
        artistAlbums = {}
        @@artists.each do |item|
            if artistAlbums.include?(item) == false
                artistAlbums[item] = 1
            elsif artistAlbums.include?(item) == true
                artistAlbums[item] = artistAlbums[item] + 1
            end
        end
        return artistAlbums
    end
end
