# Class which allows to download images from Internet
class Image
  def self.download(url)
    resp = Faraday.get url
    raise ArgumentError, 'Wrong url, bro!' if resp.status.to_s =~ /[45]\d+/ # or >= 400
    type, ext = resp.headers['content-type'].split('/') # or .scan(/\w+/)
    raise TypeError, 'There\'s no image there' if type != 'image'
    File.open("download.#{ext}", 'wb') { |f| f.write resp.body }
  end
end
