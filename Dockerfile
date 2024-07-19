# Use the official Node.js image as the base image
FROM node:latest
 
# Set the working directory inside the container
WORKDIR /angular_poc
 
# Copy the current directory contents into the container at /angular_poc
COPY . /angular_poc
 
# Install Angular CLI globally
RUN npm install -g @angular/cli
 
# Install the project dependencies
RUN npm install
 
# Verify the npm version (optional, can be removed if not needed)
RUN npm --version
 
# Expose port 3000
EXPOSE 3000
 
# Define the command to run the Angular application
CMD ["ng", "serve", "--host", "0.0.0.0", "--port", "3000"]