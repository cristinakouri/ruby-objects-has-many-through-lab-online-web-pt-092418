class Genre 
  attr_accessor :name, :artist, :songs   
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @songs = []
    @@all << self 
    @artist = artist 
  end 
  
  def songs 
    Song.all 
  end 
  
  def self.all 
    @@all 
  end 
  
  def artists 
    Song.all.collect do |song|
      song.artist 
    end 
  end 
  
end 


