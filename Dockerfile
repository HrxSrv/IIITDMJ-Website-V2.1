# Use official Node.js image
FROM node:18

# Set working directory
WORKDIR /app

# Copy package.json and install
COPY package*.json ./
RUN npm install

# Copy entire source
COPY . .

# Expose port (match your server)
EXPOSE 5000

# Run the app (adjust path to server.js)
CMD ["node", "src/data/server.js"]
