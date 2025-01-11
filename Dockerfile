# Use the official Apache image from Docker Hub as a base image
FROM httpd:alpine

# Copy the website's static files into the container's default Apache directory
COPY . /usr/local/apache2/htdocs/

# Expose port 80 to make the website accessible from the outside
EXPOSE 80

# Apache will automatically start when the container runs (default entrypoint)
