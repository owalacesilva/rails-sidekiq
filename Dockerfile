# Use the Ruby 3.2.2 image as the base
FROM ruby:3.2.2-bullseye AS build

# Update package lists
RUN apt-get update && apt-get upgrade -y

# Install Nginx and postgres client library
RUN apt-get install -y nginx postgresql-client

# Set working directory (optional, adjust as needed)
WORKDIR /app

# Copy your Ruby application code here (replace with your copy command)
COPY . .

# Expose port
EXPOSE 3000
