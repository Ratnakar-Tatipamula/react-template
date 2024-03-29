# Use an official Node.js runtime as a base image
FROM node:16

# Set the working directory in the container
WORKDIR /code

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install the dependencies
RUN npm install

# Copy the content of the local src directory to the working directory
COPY . .

# Build the React app
RUN npm run build

# Expose port 80 to the outside world
EXPOSE 80

# Define the command to run your app
CMD ["npm", "start"]
