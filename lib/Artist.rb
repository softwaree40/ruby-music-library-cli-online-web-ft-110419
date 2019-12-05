class Artist 
     @@all = []
    attr_accessor:name,:song,:songs,:artist
   def initialize(name,artist = nil)
      @name= name 
      save 
      @songs =[]
      @artist = artist 
      
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
   
  
end