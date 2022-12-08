module YoutubeHelper
  def transform_url(creations)
    creations.map do |creation|
      match = creation.creation_url.match(/\w+\Z/)
      creation_url = "https://www.youtube.com/embed/#{match}"
      creation.update(creation_url: creation_url)
    end
  end
end
