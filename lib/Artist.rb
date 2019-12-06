class Artist 
     @@all = []
    attr_accessor:name,:song,:songs
   def initialize(name,artist = nil)
      @name= name 
      save 
      @songs =[]
      @artist = []
      @song = song
      
   end
   def self.all 
    @@all 
  end
  def self.destroy_all
    @@all.clear
  end
  def save
     @@all << self 
    
  end
  def self.create(name)
    Artist.new(name) 
     #binding.pry 
    
  end
   def add_song(song)
      song.artist = self if !song.artist
      
      self.songs << song  if !self.songs.include?(song)
      @artist << self
    #binding.pry
   end
  
end