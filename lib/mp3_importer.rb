class MP3Importer
 attr_accessor :path
  def initialize(path)
    @path = path
  end
  def files
    Dir[path+"/**/*.mp3"].collect{|e| e.split("/").last}
    binding.pry
  end
  def import
    #binding.pry
    self.files.each{|e|
      Song.new_by_filename(e)
    }
    #binding.pry
  end
end
