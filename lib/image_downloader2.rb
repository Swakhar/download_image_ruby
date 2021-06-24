require "down"
require "fileutils"

class ImageDownloader2
  attr_reader :file

  def initialize(path)
    raise "No such file or directory @ #{path}" unless File.exists? path

    @file = File.open(path)
  end

  def download
    @file.each do |url|
      tempfile = Down.download(url)
      FileUtils.mv(tempfile.path, "./#{tempfile.original_filename}")
    rescue
      puts "Unable to download: #{url}"
    end
  end
end
