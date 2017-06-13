Dir["#{@template_source}/db/**/*.*"].each do |file|
  dest = file
  dest = dest.gsub("#{@template_source}/", '')
  if dest.include? 'migrate'
    dest = dest.gsub('20170124115250', timestamp = Time.now.strftime('%Y%m%d%H%M%S'))
  end
  copy_file(file, dest) unless file.end_with? 'template.rb'
end
