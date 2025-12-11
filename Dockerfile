# Use Nginx lightweight image
FROM nginx:alpine

# Set working directory to Nginx default HTML folder
WORKDIR /usr/share/nginx/html

# Copy your built static files (dist folder) into the container
COPY dist/ .

# Expose port 80 (Nginx default)
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]