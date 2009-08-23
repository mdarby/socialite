puts "Copying Socialite files..."

# Stylesheet
dest_file = File.join(RAILS_ROOT, "public", "stylesheets", "socialite.css")
src_file = File.join(File.dirname(__FILE__) , "assets", "stylesheets", "socialite.css")
FileUtils.cp_r(src_file, dest_file)

# Images
FileUtils.mkdir File.join(RAILS_ROOT, "public", "images", "socialite")

%w{delicious digg email facebook reddit stumbleupon technorati twitter}.each do |site|
  dest_file = File.join(RAILS_ROOT, "public", "images", "socialite", "#{site}_16.png")
  src_file = File.join(File.dirname(__FILE__) , "assets", "images", "#{site}_16.png")
  FileUtils.cp_r(src_file, dest_file)
end

puts "Files copied - Installation complete!"
