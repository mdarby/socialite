puts "Copying Socialite files..."

# Stylesheet
dest_file = File.join(RAILS_ROOT, "public", "stylesheets", "socialite.css")
src_file = File.join(File.dirname(__FILE__) , "assets", "stylesheets", "socialite.css")
FileUtils.cp_r(src_file, dest_file)

# Images
src_images = "#{FILE.dirname(__FILE__)}/assets/images"
dest_images = "#{RAILS_ROOT}/pubilic/images/socialite"
puts "#{src_images} -- #{dest_images}"

FileUtils.mkdir dest_images
FileUtils.cp_r Dir.glob("#{src_images}/*.rb"), dest_images, :verbose => true

puts "Files copied - Installation complete!" 
