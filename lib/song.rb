class Song 
  attr_accessor :name, :artist, :genre
  
  @@count = 0 
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name 
    @@artists = artist
    @@count += 1
    @@genres = genre
    
  end 
  
  def self.count(count)
    @@count
  end 
  
  def self.genre(genre)
    unless @@genres.include?(genre)
      @@genres << genre
    end 
  end 
end 
