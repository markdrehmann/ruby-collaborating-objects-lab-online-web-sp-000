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

  def artist_name(name)
    if song.artist.nil?
      Artist.new(name)
    else
      song.artist.name = name
    end
  end

  def songs
    @songs # Song.all.collect { |artist| artist == self }
  end

  def self.find_or_create_by_name(name)
    if self.all.include?(name)
      return name
    else
      artist = Artist.new(name)
    end
    artist
  end

  def print_songs
    puts @songs
  end

  def self.all
    @@all
  end

end
