class Song 
  attr_accessor :name, :artist, :genre
  
  @@count = 0 
  @@genres = []
  
  def initialize
    @@count += 1
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
