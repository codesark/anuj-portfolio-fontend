# Use the official Node.js 20 image as the base image
FROM node:20.10.0-alpine3.19

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY . .

# Build the Next.js app
RUN npm run build

# Expose the port that the Next.js app will run on
EXPOSE 3000

# Set the command to start the Next.js app
CMD ["npm", "start"]
