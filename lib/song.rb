require 'pry'
class Song 
  attr_accessor :name, :artist, :genre
  
  @@count = 0 
  @@genres = []
  @@artists = []
  @@artist_count = {}
  @@genre_count = {}
  
  def initialize(name, artist, genre)
    @name = name 
    @artist = artist 
    @@artists << artist 
    @@count += 1
    @genre = genre
    @@genres << genre
    
  end 
  
  def self.count
    @@count
  end 
  
  def self.artists
    @@artists = @@artists.uniq
  end 
  
  #binding.pry
  def self.genres
    @@genres = @@genres.uniq
  end 
  
  def self.genre_count
    @@genre_count[genre] ||= []
      @@genre_count[genre] << name
    @@genre_count
  end 
end 
