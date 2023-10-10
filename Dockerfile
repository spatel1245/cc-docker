FROM node:18-alpine

LABEL maintainer="Shiv Patel"

WORKDIR /usr/src/app

# Copy the three specified assets into the working dir set earlier. the second command copies the contents of 
# the views into a directory titled views in the working dir.
COPY app.js package.json .
COPY views/ /usr/src/app/views

RUN npm install --only=production

EXPOSE 8080

CMD ["node", "./app.js"]

# updated run command:
# docker run -it --name app spatel1245/cs1660-assignment2:v1
