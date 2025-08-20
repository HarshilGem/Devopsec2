# 1. Use official Node.js LTS image
FROM node:lts

# 2. Set working directory in container
WORKDIR /Devopsec2

# 3. Copy package.json and install dependencies
COPY package.json package-lock.json ./
RUN npm install

# 4. Copy only server-side source code (ignore client)
COPY . .

# 5. Remove client folder (not needed for backend deployment

# 6. Expose the app port (adjust if needed)
EXPOSE 3000

# 7. Command to run your app
CMD ["node", "server.js"]
