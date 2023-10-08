# Use the official Ruby image from Docker Hub as the base image
FROM ruby:3.2.2

# Set the working directory in the container
WORKDIR /app

# Install system dependencies and libraries
RUN apt-get update && apt-get install -y \
    build-essential \
    nodejs

# Install Rails gems with Bundler
COPY Gemfile Gemfile.lock ./
RUN gem install bundler && bundle install

# Copy the application code into the container
COPY . .

# Expose port 3000 (the default Rails port)
EXPOSE 3000

# Start the Rails application server
CMD ["rails", "server", "-b", "0.0.0.0"]