require_relative 'lib/image_downloader2'

downloader = ImageDownloader2.new(ARGV[0])
downloader.download
