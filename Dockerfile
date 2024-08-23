# Use the official Node.js image with Alpine as a base image
FROM node:18-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the package.json and yarn.lock files from the app folder into the container
COPY app/package.json app/yarn.lock ./

# Install all dependencies including devDependencies
RUN yarn install

# Copy the rest of the application code from the app folder into the container
COPY app .

# Expose port 3000 to the outside world
EXPOSE 3000

# Command to run your application
CMD ["node", "src/index.js"]
