require_relative 'lib/image_downloader'

downloader = ImageDownloader.new(ARGV[0])
downloader.download
