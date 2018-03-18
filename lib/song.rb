class Song
	attr_accessor :name, :artist, :genre
	@@count = 0
	@@genres = []
	@@artists = []
	@@genre_count = {}
	@@artist_count = {}


	def self.count
		@@count
	end

	def self.artist_count
		@@artist_count
	end

	def self.genre_count
		@@genre_count
	end

	def self.genres
		@@genres.uniq
	end

	def self.artists
		@@artists.uniq
	end

	def initialize name,artist,genre
      @name=name
      @artist=artist
      @@artists<<artist
      @genre=genre
      @@genres<<genre
      @@count+=1
      if @@genre_count.keys.include?(genre)
        @@genre_count[genre]+=1
      else
        @@genre_count[genre]=1
      end
      if @@artist_count.keys.include?(artist)
        @@artist_count[artist]+=1
      else
        @@artist_count[artist]=1
      end
    end

end
