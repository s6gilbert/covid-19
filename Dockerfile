# Use an official Ubuntu as the base image
FROM ubuntu:latest

# Update the package list and install necessary packages
RUN apt-get update && \
    apt-get install -y apache2 && \
    apt-get clean && \
	rm -rf /var/lib/apt/lists/*

 # Set the working directory to the Apache web root
WORKDIR /var/www/html
COPY . .

# Expose port 80 to the outside world
EXPOSE 80



CMD ["apachectl", "-D", "FOREGROUND"]

