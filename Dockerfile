# Base image:
FROM ruby:2.6.5

MAINTAINER MD MASUD RANA "masudcsesust04@gmail.com"

# Install dependencies
RUN apt-get update -qq \
	&& apt-get install -y \
		build-essential \
		libpq-dev \
		nodejs \
		vim \
		iputils-ping \
		dnsutils \
		zip \
		unzip \
		wget

# Set an environment variable where the Rails app is installed inside of Docker image
ENV RAILS_ROOT /var/www/rails-web-starter
RUN mkdir -p $RAILS_ROOT 

# Set working directory, where the command will be ran:
WORKDIR $RAILS_ROOT

# Setting application environment up
ENV RAILS_ENV=production
ENV RACK_ENV=production

# Add Gmefile and Gemfile.lock to the working direcotry
COPY Gemfile Gemfile
COPY Gemfile.lock Gemfile.lock
COPY VERSION .

# Install bundler gem
RUN gem install bundler

# Install gems
RUN bundle install --jobs 20 --retry 5 --without development test 

# Add current directory to the application directory to the Docker image
COPY . $RAILS_ROOT

# Assests precompile specifying production environment
RUN bundle exec rake assets:precompile RAILS_ENV=production

# Expose port and run puma app server 
EXPOSE 3000

CMD ["bundle", "exec", "puma", "-C", "config/puma.rb"]

