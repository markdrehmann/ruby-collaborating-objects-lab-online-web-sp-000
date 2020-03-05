class Artist

  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def add_song(song)
    @songs << song
  end

  def songs
    @songs
  end

  def self.find_or_create_by_name(name)
    if @@all.include?(name)
      return name
    else
      artist = Artist.new(name)
    end
  end

  def print_songs
    puts self.songs
  end

  def self.all
    @@all
  end

end
