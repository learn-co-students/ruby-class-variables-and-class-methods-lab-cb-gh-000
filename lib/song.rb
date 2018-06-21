require 'pry'
class Song

  @@count=0
  @@artists=[]
  @@artist_count={}
  @@genre_count= {}
  @@genres = []

  attr_accessor :name,:artist, :genre

  def initialize(name,artist,genre)

    @name=name
    @artist=artist
    @genre=genre

    @@count+=1

      @@genres<<genre
    if @@genre_count[genre].nil?
      @@genre_count[genre]=1

    else
      @@genre_count[genre]+=1
    end

    @@artists<<artist
    if @@artist_count[artist].nil?
      @@artist_count[artist]=1

    else
      @@artist_count[artist]+=1
    end

  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq{|genre| genre}
  end

  def self.genre_count
    @@genre_count
  end

  def self.artists
    @@artists.uniq{|artist| artist }
  end

  def self.artist_count
    @@artist_count
  end

end

lucifer = Song.new("Lucifer", "Jay-Z", "rap" )
ninety_nine_problems = Song.new("99 Problems", "Jay-Z", "rap")
hit_me = Song.new("hit me baby one more time", "Brittany Spears", "pop")

puts Song.count
puts Song.artists
puts Song.artist_count
puts Song.genres
puts Song.genre_count
puts hit_me.name
