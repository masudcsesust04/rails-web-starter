# Rails web starter application
Rails 5, Devise authentication, Haml, Rspec and Twitter bootstrap CSS framework integrated sample project. 

### Versions
- Ruby 2.6.5
- Rails 5.2
- MySQL 5.7

### System dependencies
```
$ gem install bundler
$ bundle install --path vendor/bundle
```

### Configuration
- Make a copy of ```.env.sample``` file as ```.env``` and update DB configuration as your db host, name etc.

### Database creation
```
$ bundle exec rake db:create:all
```

### Database initialization
```
# import seed data
$ bundle exec rake db:seed

# prepare test database
$ bundle exec rake db:test:prepare
```

### Run application
```
$ bundle exec rails s
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
