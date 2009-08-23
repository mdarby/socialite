puts "Copying Socialite files..."

# Stylesheet
dest_file = File.join(RAILS_ROOT, "public", "stylesheets", "socialite.css")
src_file = File.join(File.dirname(__FILE__) , "assets", "stylesheets", "socialite.css")
FileUtils.cp_r(src_file, dest_file)

# Images
FileUtils.mkdir "#{RAILS_ROOT}/public/images/socialite"
FileUtils.cp_r "#{FILE.dirname(__FILE__)}/assets/images/", "#{RAILS_ROOT}/public/images/socialite"

puts "Files copied - Installation complete!" 
