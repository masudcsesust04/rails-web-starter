Dir["#{@template_source}/app/**/*.*"].each do |file|
  dest = file
  dest = dest.gsub("#{@template_source}/", '')
  copy_file(file, dest) unless file.end_with? 'template.rb'
end
