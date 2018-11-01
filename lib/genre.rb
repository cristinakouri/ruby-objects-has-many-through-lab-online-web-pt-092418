class Genre 
  attr_accessor :name, :songs  
  
  @@all = []
  
  def initialize(name)
    @name = name  
    @songs = []
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end
  
  def songs
    Song.all 
  end 
  
  def artists 
    Song.all.collect do |song|
      song.artist
    end 
  end 
end 