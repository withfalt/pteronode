FROM node:latest
CMD ["npm", "install", "--no-bin-links", "&&", "node", "."]
