class Song
  attr_accessor :name , :artist, :genre
    @@count = 0
    @@artists = []
    @@genres =[]
    @@genre_count ={}
    @@artist_count ={}
  def initialize(name,artist,genre)
    @@count+=1
    @name = name
    @artist = artist
    @genre = genre
    @@genres << genre
    @@artists << artist
    if @@genre_count[genre].nil?
      @@genre_count[genre]=1
    else
      @@genre_count[genre]+=1
    end
    if @@artist_count[artist].nil?
      @@artist_count[artist]=1
    else
      @@artist_count[artist]+=1
    end
  end

  def self.count
    @@count
  end

  def genre
    @genre
  end

  def self.artists
    arr=[]
    @@artists.each do |k|
      arr << k if arr.include?(k)==false
    end
    arr
  end

  def self.genres
    arr=[]
    @@genres.each do |k|
      arr << k if arr.include?(k)==false
    end
    arr
  end

  def self.genre_count
    @@genre_count
  end
  def self.artist_count
    @@artist_count
  end
end
