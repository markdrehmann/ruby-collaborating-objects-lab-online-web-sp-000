class Artist

  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def add_song(name)

  end

  def artist_name(name)
    if song.artist.nil?
      Artist.new(name)
    else
      song.artist.name = name
    end

  def self.all
    @@all
  end

end
