FROM node:22-alpine
WORKDIR /app

COPY package*.json .
COPY ./public ./public
COPY ./src ./src
COPY ./tests ./tests
COPY *.json .
COPY ./index.html .
COPY ./vite.config.ts .

# RUN est exécuté pendant la construction de l'image
RUN npm install

EXPOSE 5173

CMD [ "npm", "run", "dev", "--", "--host", "0.0.0.0"]