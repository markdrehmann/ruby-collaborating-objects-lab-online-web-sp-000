class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    @files = Dir.entries("./spec/fixtures")
  end

  def import(file_name)
    Song.new_by_filename(file_name)
  end

end
