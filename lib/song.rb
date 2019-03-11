class Song
  @@count=0
  @@genres=[]
  @@artists=[]
  attr_accessor :artist,:genre,:name
  def initialize(name,artist,genre)
    @genre=genre
    @artist=artist
    @name=name
    @@genres<<genre
    @@artists<<artist
    @@count+=1
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
    hash={}
    @@genres.each do|genre|
      if hash.has_key?(genre)
        hash[genre]+=1
      else
        hash[genre]=1
      end
    end
    hash
  end
  def self.artist_count
    hash={}
    @@artists.each do |artist|
      if hash.has_key?(artist)
        hash[artist]+=1
      else
        hash[artist]=1
      end
    end
    hash
  end
end
