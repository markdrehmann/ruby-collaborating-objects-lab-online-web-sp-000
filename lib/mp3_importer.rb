class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    @files = Dir.entries(@path).reject {|f| File.directory?(f) || f[0].include?('.')}
  end

  def import
    files.each { |song| Song.new_by_filename(song) }
  end

end
