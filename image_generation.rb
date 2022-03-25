
require 'mini_magick'
require 'parameterize'

def create_image(name, event, date, speaker)
  image = MiniMagick::Image.open("images/background.png")
  image.combine_options do |c|
    c.font "fonts/Georgia-Bold-Italic.ttf"
    c.fill "#2d3e64"
    c.pointsize 40
    c.gravity "center"
    c.draw "text 0, -20 '#{name}'"
    c.pointsize 25
    c.draw "text 0, 68 '#{event}'"
    c.draw "text 0, 94 '#{date}'"
    c.draw "text 0, 170 '#{speaker}'"
  end

  image.write "output/#{name.parameterize}.jpg"
end

create_image("Mariel Hoepelman", "Test event", Time.now, "Tood Bonzalez, PhD")
