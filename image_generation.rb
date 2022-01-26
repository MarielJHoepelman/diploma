# require "RMagick"
#
# img = Magick::ImageList.new("background.png")
#
# text = Magick::Draw.new
# message = "Hello World"
#
# text.annotate(img, 0,0,0,0, text) do
#   self.gravity = Magick::CenterGravity # Text positioning
#   self.pointsize = 100 # Font size
#   self.fill = "#1c1c1c" # Font color
#   self.font = "AvenirNext-HeavyItalic.ttf" # Font file; needs to be absolute
#   img.format = "jpeg"
# end
#
# img.write("generated.jpg") # Destination image

#!/usr/bin/env ruby

require 'mini_magick'

def create_image
  caption = "I LOVE WALLPAPERZ!!!!!1"
  # caption = "I HATE IMAGEMAGICK! I HATE IMAGEMAGICK!"
  image = MiniMagick::Image.open("background.png")
  image.combine_options do |c|
    c.font "AvenirNext-HeavyItalic.ttf"
    c.fill "white"
    c.pointsize 40
    c.gravity "center"
    c.draw "text 0,300 '#{caption}'"
  end

  image.write "output.jpg"
end

create_image
