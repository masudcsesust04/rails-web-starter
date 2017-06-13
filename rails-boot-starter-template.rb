require 'fileutils'
require 'shellwords'

RAILS_REQUIREMENT = '~> 5.0.2'

def apply_template!
  template_source = add_template_repository_to_source_path
  assert_minimum_rails_version
  cleanup_files

  Dir["#{template_source}/app/**/*.*"].each do |file|
    dest = file
    dest = dest.gsub("#{template_source}/", '')
    copy_file(file, dest) unless file.end_with? 'template.rb'
  end

  Dir["#{template_source}/config/**/*.*"].each do |file|
    dest = file
    dest = dest.gsub("#{template_source}/", '')
    copy_file(file, dest) unless file.end_with? 'template.rb'
  end

  Dir["#{template_source}/db/**/*.*"].each do |file|
    dest = file
    dest = dest.gsub("#{template_source}/", '')
    if dest.include? 'migrate'
      dest = dest.gsub('20170124115250', timestamp = Time.now.strftime('%Y%m%d%H%M%S'))
    end
    copy_file(file, dest) unless file.end_with? 'template.rb'
  end

  Dir["#{template_source}/spec/**/*.*"].each do |file|
    dest = file
    dest = dest.gsub("#{template_source}/", '')
    copy_file(file, dest) unless file.end_with? 'template.rb'
  end

  copy_file '.gitignore'
  copy_file '.haml-lint.yml'
  copy_file '.rspec'
  copy_file '.rubocop.yml'
  copy_file 'Gemfile'
end

def add_template_repository_to_source_path
  if __FILE__ =~ %r{\Ahttps?://}
    source_paths.unshift(tempdir = Dir.mktmpdir('rails-template-'))
    at_exit { FileUtils.remove_entry(tempdir) }
    git :clone => [
        '--quiet',
        'https://github.com/masudcsesust04/rails-boot-starter.git',
        tempdir
    ].map(&:shellescape).join(' ')
    tempdir
  else
    source_paths.unshift(File.dirname(__FILE__))
    File.dirname(__FILE__)
  end
end

def assert_minimum_rails_version
  requirement = Gem::Requirement.new(RAILS_REQUIREMENT)
  rails_version = Gem::Version.new(Rails::VERSION::STRING)
  return if requirement.satisfied_by?(rails_version)

  prompt = "This template requires Rails #{RAILS_REQUIREMENT}. "\
           "You are using #{rails_version}. Continue anyway?"
  exit 1 if no?(prompt)
end

def rm_dir(path)
  FileUtils.rm_rf(path)
end

def cleanup_files
  rm_dir 'test'
end

apply_template!
