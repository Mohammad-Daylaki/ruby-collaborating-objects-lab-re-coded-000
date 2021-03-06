class MP3Importer
  attr_accessor :file, :path

  def initialize(path)
    @path=path
    @files =[]
  end

  def files
    if @files.empty?
    @files = Dir.entries(@path).select {|file| file.end_with?('.mp3')}
    end
    @files
  end

  def import
    self.files.each {|e| Song.new_by_filename(e)}
  end
end
