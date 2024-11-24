FROM node:22-alpine
WORKDIR /app

COPY package*.json .
COPY ./public ./public
COPY ./src ./src
COPY ./tests ./tests
COPY *.json .
COPY ./index.html .
COPY ./vite.config.ts .
RUN ["npm", "install"]

EXPOSE 5173
ENTRYPOINT [ "npm", "run", "dev", "--", "--host", "0.0.0.0"]