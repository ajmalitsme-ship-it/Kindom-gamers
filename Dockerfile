# Use nginx to serve static HTML
FROM nginx:alpine

# Copy your HTML file to nginx web root
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80
EXPOSE 80
