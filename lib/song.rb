require "pry"
class Song
  attr_accessor :name, :artist_name
  @@all = []
  
  def self.create
    variable_song = self.new 
    variable_song.save
    variable_song
  end 
# def name=(name) 
#   @name = name 
# end 

# def name 
#   @name
# end 
 def self.new_by_name(song_name)
   song_by_name = self.new 
   song_by_name.name = song_name 
   song_by_name
 end
   def self.create_by_name(song_name)
   song_by_name = self.create 
   song_by_name.name = song_name 
   song_by_name
 end
 
 def self.find_by_name(title)
   binding.pry 
 end
   
  def self.all
    @@all
  end

  def save
    # binding.pry
    self.class.all << self
  end

end
