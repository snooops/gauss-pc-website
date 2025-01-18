FROM busybox:latest

# Create a non-root user to own the files and run our server
RUN adduser -D static
USER static
WORKDIR /home/static

# Copy the static website
# Use the .dockerignore file to control what ends up inside the image!
ADD --chown=static ./output/ /home/static

# Run BusyBox httpd
CMD ["busybox", "httpd", "-f", "-v", "-p", "3000"]