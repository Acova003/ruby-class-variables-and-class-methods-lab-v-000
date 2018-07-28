require 'pry'
class Song 
  attr_accessor :name, :artist, :genre
  
  @@count = 0 
  @@genres = []
  @@artists = [].uniq
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
    @@artists
  end 
  
  #binding.pry
  def self.genres
    unless @@genres.include?(@genre)
      @@genres << @genre
    end 
  end 
  
  #def genre 
end 
