require "open-uri"

class ImageDownloader
  attr_reader :file

  def initialize(path)
    raise "No such file or directory @ #{path}" unless File.exists? path

    @file = File.open(path)
  end

  def download
    @file.each do |url|
      clean_url = url.strip
      download_image(clean_url, clean_url.split('/').last)
    rescue
      puts "Unable to download: #{clean_url}"
    end
  end

  private

  def download_image(url, dest)
    URI.open(url) do |u|
      File.open(dest, 'wb') { |f| f.write(u.read) }
    end
  end
end
