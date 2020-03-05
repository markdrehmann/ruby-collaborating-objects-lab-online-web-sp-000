class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    @files = Dir.entries("./spec/fixtures/mp3s")
  end

  def import
    files.each { |song| Song.new_by_filename(song) }
  end

end
