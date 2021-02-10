# Rails web starter application
Rails 6, Devise authentication, CanCanCan user role based authorization, Rspec and Twitter bootstrap 4 CSS framework integrated sample project. 

### Versions
- Ruby 3.0
- Rails 6.1.1
- PostgreSQL 12.1

### System dependencies
```
$ gem install bundler
$ bundle install --path vendor/bundle

$ gem install foreman
$ gem install rubocop
```

### Configuration
- Make a copy of ```.env.sample``` file as ```.env``` and update DB configuration as your db host, name etc.

### Database creation
```
$ bundle exec rake db:create:all
```

### Database initialization
```
$ bundle exec rake db:migrate
$ bundle exec rake db:seed
$ bundle exec rake db:test:prepare
```

### Run application
```
$ foreman start -f Procfile.dev
```

### Enter rails console
```
$ bundle exec rails c
```

### Run the rspec test suite
```
# to run all of the test suite
$ bundle exec rspec 

# to run sepcific spec file
$ bundle exec rspec file_name_with_path 
```

### Run rubocop to fix offenses
```
$ bundle exec rubocop
```

### Services (job queues, cache servers, search engines, etc.)
- Add here, If you used any over the application development life cycle.

### Deployment instructions
- Add capistrano or 
- Docker deployment instructions 

