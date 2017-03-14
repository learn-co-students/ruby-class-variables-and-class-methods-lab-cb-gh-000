class Song
	attr_accessor :name, :artist, :genre

	@@count = 0
	@@artists = []
	@@genres = []

	def initialize(name, artist, genre)
		@name = name
		@artist = artist
		@genre = genre

		@@count += 1
		@@artists.push(artist)
		@@genres.push(genre)

		#if @@artist.include?(artist) == false
			
		#end
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
		genre_hash = {}
		@@genres.each do |genre|
			if genre_hash.key?(genre) == false
				genre_hash[genre] = 1
			else
				genre_hash[genre] += 1
			end
		end
		genre_hash
	end


	def self.artist_count
		artist_hash = {}
		@@artists.each do |artist|
			if artist_hash.key?(artist) == false
				artist_hash[artist] = 1
			else
				artist_hash[artist] += 1
			end
		end
		artist_hash
	end
end