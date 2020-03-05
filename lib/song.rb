class Song

  attr_accessor :name, :artist
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_by_filename(filename)
    filename.split(" - ")
    song = Song.new(filename[1])
    song.artist = filename[0]
  end

  def self.all
    @@all
  end

end
