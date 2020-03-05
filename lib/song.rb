class Song

  attr_accessor :name, :artist
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.new_by_filename(file_name)
    file_name.split(" - ").chomp(".mp3")
    song = Song.new(file_name[1])
    song.artist = file_name[0]
  end

  def self.all
    @@all
  end

end
