class Artist 
  attr_accessor :name, :songs, :genres, :genre   
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self
    @songs = []
    @genres = []
  end 
  
  def self.all 
    @@all 
  end
  
  def new_song(name, genre)
    song = Song.new(name, self, genre)
    @songs << song 
    song 
  end 
  
  def genres 
    @songs.collect do |song|
      song.genre 
    end
  end 
  
  def songs 
    Song.all.select do |song|
        song.artist == self 
    end 
  end 
  
end 





