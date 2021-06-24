require './lib/image_downloader2'

RSpec.describe ImageDownloader2 do
  let(:file_path) { './spec/test_images.txt' }
  subject { described_class.new(file_path) }

  describe '#download' do
    before { subject.download }
    it 'download the image locally' do
      expect(Dir['test.original.jpg'].length).to eq 1
    end
  end
end
