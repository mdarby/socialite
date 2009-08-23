puts "Copying Socialite files..."

# Stylesheet
dest_file = File.join(RAILS_ROOT, "public", "stylesheets", "socialite.css")
src_file = File.join(File.dirname(__FILE__) , "assets", "stylesheets", "socialite.css")
FileUtils.cp_r(src_file, dest_file)

# Images
dest_folder = File.join(RAILS_ROOT, "public", "images")
FileUtils.cp_r 'assets/images/', "#{RAILS_ROOT}/public/images"

puts "Files copied - Installation complete!" 
