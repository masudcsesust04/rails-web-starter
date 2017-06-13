def apply_template!
  @template_source = add_template_repository_to_source_path
  cleanup_files
  apply 'app/template.rb'
  apply 'config/template.rb'
  apply 'db/template.rb'
  apply 'spec/template.rb'

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
        'https://github.com/eendroroy/rails-boot-starter.git',
        tempdir
    ].map(&:shellescape).join(' ')
    tempdir
  else
    source_paths.unshift(File.dirname(__FILE__))
    File.dirname(__FILE__)
  end
end

def rm_dir(path)
  FileUtils.rm_rf(path)
end

def cleanup_files
  rm_dir 'test'
end

apply_template!
