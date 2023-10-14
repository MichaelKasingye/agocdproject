# Use an official Nginx runtime as a base image
FROM nginx:latest

# Set the working directory to /usr/share/nginx/html
WORKDIR /usr/share/nginx/html

# Copy the current directory contents into the container at /usr/share/nginx/html
COPY . .

# Expose port 80 to allow external access
EXPOSE 80

# Command to run when the container starts
CMD ["nginx", "-g", "daemon off;"]

# # Use the httpd (Apache HTTP Server) base image
# FROM httpd:latest

# # Copy the HTML file to the default Apache web root
# COPY index.html /usr/local/apache2/htdocs/

# # Expose port 80 for external access
# EXPOSE 80
