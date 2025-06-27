# Use a lightweight Nginx base image
FROM nginx:alpine

# Copy the local index.html file into the Nginx web root
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80 to allow external access to the web server
EXPOSE 80

# Command to run when the container starts (Nginx will start automatically)
CMD ["nginx", "-g", "daemon off;"]
