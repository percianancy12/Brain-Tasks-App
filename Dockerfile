# ---- Runner Stage ----
FROM nginx:alpine
WORKDIR /usr/share/nginx/html

# Copy prebuilt static files from dist
COPY dist/ .

# Expose the application port
EXPOSE 3000

# Start the application
CMD ["nginx", "-g", "daemon off;"]
