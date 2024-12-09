# Use the official Alpine base image
FROM alpine:latest

# Install the Apache HTTP server package from Alpine's repository
RUN apk update && \
    apk add --no-cache apache2

# Copy the index.html file from the Docker build context to the default Apache document root directory in the container
COPY index.html /var/www/localhost/htdocs/

# Specify the command to run when the container starts, which starts the Apache HTTP server in the foreground
CMD ["httpd", "-D", "FOREGROUND"]

# Expose port 80 to allow incoming HTTP traffic to the container
EXPOSE 80
