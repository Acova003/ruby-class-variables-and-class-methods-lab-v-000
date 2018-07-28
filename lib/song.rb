class Song 
  attr_accessor :name, :artist, :genre
  
  @@count = 0 
  @@genres = []
  
  def initialize(name, artist, genre)
    @name = name 
    @artist = artist
    @@count += 1
    @genre = genre
    @@genres = []
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
