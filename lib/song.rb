require "pry"

class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists  = []
  @@genres = []

def initialize(name, artist, genre)
  @name = name
  @artist = artist
  @genre = genre
  @@count+=1
  @@artists << artist
  @@genres << genre
end

def self.count
  @@count
end

def self.artists
  @@artists.uniq
end

def self.genres
  @@genres.uniq
end

def self.artist_count
 artist_count = Hash.new(0)
 # This simply creates a new hash and stores it in a variable
 @@artists.each { |artist| artist_count[artist] += 1}
 # The class variable is an Array this iterates over each artist within it and creates
artist_count
end


def self.genre_count
      genre_count = Hash.new(0)
      @@genres.each { |genre| genre_count[genre] += 1}
      genre_count
end

end



#
# ninety_nine_problems = Song.new("99 Problems", "Jay-Z", "rap")
#
# ninety_nine_problems.name
#
# ninety_nine_problems.artist
#
# ninety_nine_problems.genre

# binding.pry
# 0
