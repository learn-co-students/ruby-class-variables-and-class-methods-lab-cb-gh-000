# Define your Song class such that an individual song is initialized with a name, artist and genre.
class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@genres << genre
    @@artists << artist

    @@count += 1
  end

  def self.count
    @@count
  end

  def self.genres
    #returns an array of all of the genres of existing songs.
    #This array should contain only unique genres––no duplicates!
    @uniqueG = []
    @@genres.each do |g|
      if !@uniqueG.include?(g)
        @uniqueG << g
      end
    end
    @uniqueG
  end

  def self.artists
    @uniqueA = []
    @@artists.each do |a|
      if !@uniqueA.include?(a)
        @uniqueA << a
      end
    end
    @uniqueA
  end


 # You will need to iterate over the @@genres array and populate a hash with the key/value pairs.
 #You will need to check to see if the hash already contains a key of a particular genre.
 #If so, increment the value of that key by one, otherwise, create a new key/value pair.
  def self.genre_count
    genre_hash = {}
    #returns a hash in which the keys are the names of each genre.
    #each genre name key should point to a value that is the number of songs that have that genre.
    @@genres.each do |g|
      if genre_hash.key?(g) #if key exists
        genre_hash[g] += 1 #increment count
      else
        genre_hash[g] = 1 #make new key/value pair
      end
    end
      genre_hash
  end

  def self.artist_count
    artist_hash = {}
    #returns a hash in which the keys are the names of each genre.
    #each genre name key should point to a value that is the number of songs that have that genre.
    @@artists.each do |a|
      if artist_hash.key?(a) #if key exists
        artist_hash[a] += 1 #increment count
      else
        artist_hash[a] = 1 #make new key/value pair
      end
    end
      artist_hash
  end

end

# s = Song.new("Lucifer", "Jay-Z", "rap")
# n = Song.new("99 Problems", "Jay-Z", "rap")
# h = Song.new("hit me baby one more time", "Brittany Spears", "pop")
#
# puts Song.genres
# puts Song.artists
# puts Song.genre_count
# puts Song.artist_count
