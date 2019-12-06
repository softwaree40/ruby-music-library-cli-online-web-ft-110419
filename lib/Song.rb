require 'pry'
class Song 
    @@all = []
   attr_accessor:name,:artist
   def initialize(name,artist=nil)  #private method hook
      @name= name
      save
      @songs = []
      @artist = artist
      
   end
   def self.all            #class method 
    @@all 
   end
   def self.destroy_all    #class method 
    @@all.clear
  end
  def save
     @@all << self        #instance method
    
  end
  def self.create(name)   #class method 
      Song.new(name) 
     #binding.pry 
    
  end
  def add_song(song)
      song.artist = self if !song.artist
      self.songs << song  if !self.songs.include?(song)
  end 
end