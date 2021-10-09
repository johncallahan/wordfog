class CreatePictureJob < ApplicationJob
  queue_as :default

  def perform fog
    words = Hash.new(0).tap { |h| fog.words.split(" ").each { |w| h[w] += 1 } }
    cloud = MagicCloud::Cloud.new(words, rotate: :free, scale: :log)
    pngimage = cloud.draw(600,400)
    pngimage.format = "png"
    fog.picture = Base64.encode64(pngimage.to_blob)
    fog.save!
  end
end
