class Artist 
     @@all = []
    attr_accessor:name,:song,:songs
   def initialize(name,artist = nil)
      @name= name 
      save 
      @songs =[]
      @artist = artist
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
      song.artist = self 
      self unless song.artist 
       
       binding.pry
   end
  
end